part of api;

class BankRepository extends BaseRepository {
  static BankRepository? _singleton;
  List<BankCard>? bankCardList;

  static BankRepository getSingleton() {
    if (_singleton == null) {
      _singleton = BankRepository();
    }
    return _singleton!;
  }

  Future<EventResult<List<Payment>>> getPayment() async {
    return await ApiRequestBuilder<List<Payment>>(
            method: HttpMethod.GET,
            endPoint: "api/Deposit",
            converter: (json) {
              return (json as List<dynamic>)
                  .map((e) => Payment.fromJson(e))
                  .toList();
            },
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<String>> getManualBankDepositId(
      String account,
      String amount,
      String? paymentId,
      String? promotionId,
      String? name,
      String? bankType) async {
    return await ApiRequestBuilder<String>(
            method: HttpMethod.PUT,
            endPoint: "api/deposit/manual/bank",
            params: {
              "account": account,
              "amount": amount,
              "paymentid": paymentId,
              "promotionid": promotionId,
              "name": name,
              "banktype": bankType
            },
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<String>> getManualThirdPartyDepositId(String account,
      String amount, String? paymentId, String? promotionId) async {
    return await ApiRequestBuilder<String>(
            method: HttpMethod.PUT,
            endPoint: "api/deposit/manual/thirdparty",
            params: {
              "account": account,
              "amount": amount,
              "paymentid": paymentId,
              "promotionid": promotionId,
            },
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<ManualDepositOrder>> getManualDepositOrder(
      String? id) async {
    return await ApiRequestBuilder<ManualDepositOrder>(
            method: HttpMethod.GET,
            endPoint: "api/Deposit/manual",
            params: id,
            converter: (json) => ManualDepositOrder.fromJson(json),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> uploadDepositImage(
      File imageFile, String id) async {
    return await ApiRequestBuilder<dynamic>(
            method: HttpMethod.MULTIPART,
            endPoint: "api/Deposit/manual",
            params: id,
            imageContent: imageFile,
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<List<WithdrawalInfo>>> getWithdrawalInfoList() async {
    return await ApiRequestBuilder<List<WithdrawalInfo>>(
            method: HttpMethod.GET,
            endPoint: "api/withdraw",
            converter: (json) => (json as List<dynamic>)
                .map((e) => WithdrawalInfo.fromJson(e))
                .toList(),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<List<BankCard>>> getBankCardList() async {
    return await ApiRequestBuilder<List<BankCard>>(
            method: HttpMethod.GET,
            endPoint: "api/bankinfo",
            converter: (json) => (json as List<dynamic>)
                .map((e) => BankCard.fromJson(e))
                .toList(),
            consumer: (result) => setRepoValues(() {
                  bankCardList = result;
                }),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> addBankCard(
      String? paymentChannelId, BankType bankType,
      {String? address,
      bankAccount,
      bankName,
      name,
      bankBranch,
      phone,
      realName}) async {
    return await ApiRequestBuilder<dynamic>(
            method: HttpMethod.POST,
            endPoint: "api/bankinfo",
            params: (() {
              switch (bankType) {
                case BankType.BANK:
                  return {
                    "paymentchannelid": paymentChannelId,
                    "banktype": bankType.getJson,
                    "detail": {
                      "bankAccount": bankAccount,
                      "bankName": bankName,
                      "name": name,
                      "bankBranch": bankBranch
                    }
                  };
                  break;
                case BankType.CRYPTO:
                  return {
                    "paymentchannelid": paymentChannelId,
                    "banktype": bankType.getJson,
                    "detail": {"address": address},
                  };
                default:
                  return {
                    "paymentchannelid": paymentChannelId,
                    "banktype": bankType.getJson,
                    "detail": {"phone": phone, "username": realName},
                  };
                  break;
              }
            }()),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> deleteBankCard(String? bankInfoId) async {
    return await ApiRequestBuilder<dynamic>(
            method: HttpMethod.DELETE,
            endPoint: "api/bankinfo/$bankInfoId",
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<DepositRedirect>> leePayDepositOrder(
      String amount, String? paymentId, String? promotionId) async {
    return await ApiRequestBuilder<DepositRedirect>(
            method: HttpMethod.PUT,
            endPoint: "api/deposit/crypto/leepay",
            params: {
              "amount": amount,
              "paymentid": paymentId,
              "promotionid": promotionId,
            },
            converter: (json) => DepositRedirect.fromJson(json),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<DepositRedirect>> primePayDepositOrder(
      String amount, String? paymentId, String? promotionId) async {
    return await ApiRequestBuilder<DepositRedirect>(
            method: HttpMethod.POST,
            endPoint: "api/deposit/bank/primepay",
            params: {
              "amount": amount,
              "paymentid": paymentId,
              "promotionid": promotionId,
            },
            converter: (json) => DepositRedirect.fromJson(json),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> withdraw(
      int amount, String bankInfoId, String payPassword) async {
    return await ApiRequestBuilder<dynamic>(
            method: HttpMethod.POST,
            endPoint: "api/withdraw",
            params: {
              "amount": amount.toString(),
              "bankinfoid": bankInfoId,
              "paypassword": payPassword,
            },
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<DepositRedirectApplePay>> applePayDepositOrder(
      String amount,
      String? paymentId,
      String? promotionId,
      String transName) async {
    return await ApiRequestBuilder<DepositRedirectApplePay>(
            method: HttpMethod.POST,
            endPoint: "api/deposit/bank/applepay",
            params: {
              "amount": int.parse(amount),
              "paymentid": paymentId,
              "promotionid": promotionId,
              "transname": transName
            },
            converter: (json) => DepositRedirectApplePay.fromJson(json),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<ExchangeRate>> getLeePayExchangeRate(
      String? paymentId) async {
    return await ApiRequestBuilder<ExchangeRate>(
            method: HttpMethod.GET,
            endPoint: "api/deposit/crypto/leepay/exchangerate",
            params: paymentId,
            converter: (json) => ExchangeRate.fromJson(json),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<DepositRedirect>> umPayBankDepositOrder(
      String amount, String? paymentId, String? promotionId) async {
    return await ApiRequestBuilder<DepositRedirect>(
            method: HttpMethod.POST,
            endPoint: "api/deposit/bank/umpay",
            params: {
              "amount": amount,
              "paymentid": paymentId,
              "promotionid": promotionId,
            },
            converter: (json) => DepositRedirect.fromJson(json),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<DepositRedirect>> umPayCryptoDepositOrder(
      String amount, String? paymentId, String? promotionId) async {
    return await ApiRequestBuilder<DepositRedirect>(
            method: HttpMethod.POST,
            endPoint: "api/deposit/crypto/umpay",
            params: {
              "amount": amount,
              "paymentid": paymentId,
              "promotionid": promotionId,
            },
            converter: (json) => DepositRedirect.fromJson(json),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<UmPayExchangeRate>> getUmPayExchangeRate(
      String? paymentId) async {
    return await ApiRequestBuilder<UmPayExchangeRate>(
            method: HttpMethod.GET,
            endPoint: "api/deposit/crypto/umpay/exchangerate",
            params: paymentId,
            converter: (json) =>
                UmPayExchangeRate.fromJson(json["rate"]["USDT"]["HKD"]),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<DepositRedirect>> maticPayDepositOrder(
      String amount, String? paymentId, String? promotionId) async {
    return await ApiRequestBuilder<DepositRedirect>(
            method: HttpMethod.POST,
            endPoint: "api/deposit/bank/maticpay",
            params: {
              "amount": amount,
              "paymentid": paymentId,
              "promotionid": promotionId,
            },
            converter: (json) => DepositRedirect.fromJson(json),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> getTurnoverAmount() async {
    //return int or double
    return await ApiRequestBuilder<dynamic>(
            method: HttpMethod.GET,
            endPoint: "api/withdraw/player/amount",
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<DepositRedirect>> help2PayDepositOrder(
      String amount, String? paymentId, String? promotionId) async {
    return await ApiRequestBuilder<DepositRedirect>(
            method: HttpMethod.POST,
            endPoint: "api/deposit/bank/help2pay",
            params: {
              "amount": amount,
              "paymentid": paymentId,
              "promotionid": promotionId,
            },
            converter: (json) => DepositRedirect.fromJson(json),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> getHelp2PayHtmlText(String url) async {
    return await ApiRequestBuilder(
      method: HttpMethod.GET,
      endPoint: url,
      /*params: {
          "amount": amount,
          "paymentid": paymentId,
          "promotionid": promotionId,
        },*/
      //  converter: (json) => DepositRedirect.fromJson(json),
      jwtRefresher: jwtAuth,
      isWithoutBaseResponse: true,
    ).execute();
  }

  Future<EventResult<DepositRedirect>> skyPayDepositOrder(
      String amount, String? paymentId, String? promotionId) async {
    return await ApiRequestBuilder<DepositRedirect>(
            method: HttpMethod.POST,
            endPoint: "api/deposit/bank/skypay",
            params: {
              "amount": amount,
              "paymentid": paymentId,
              "promotionid": promotionId,
            },
            converter: (json) => DepositRedirect.fromJson(json),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<DepositRedirect>> zeroNineNinePayDepositOrder(
      String amount, String? paymentId, String? promotionId) async {
    return await ApiRequestBuilder<DepositRedirect>(
            method: HttpMethod.POST,
            endPoint: "api/deposit/bank/zeronineninepay",
            params: {
              "amount": amount,
              "paymentid": paymentId,
              "promotionid": promotionId,
            },
            converter: (json) => DepositRedirect.fromJson(json),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<DepositRedirect>> malakiPayDepositOrder(String amount,
      String? paymentId, String? promotionId, String? type) async {
    return await ApiRequestBuilder<DepositRedirect>(
            method: HttpMethod.POST,
            endPoint: "api/deposit/$type/malakipay",
            params: {
              "amount": amount,
              "paymentid": paymentId,
              "promotionid": promotionId,
            },
            converter: (json) => DepositRedirect.fromJson(json),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<DepositRedirect>> performDeposit(
      String amount,
      String? paymentId,
      String? promotionId,
      String? type,
      String? paymentcode) async {
    return await ApiRequestBuilder<DepositRedirect>(
            method: HttpMethod.POST,
            endPoint: "api/deposit/$type/${paymentcode!.toLowerCase()}",
            params: {
              "amount": amount,
              "paymentid": paymentId,
              "promotionid": promotionId,
            },
            converter: (json) => DepositRedirect.fromJson(json),
            jwtRefresher: jwtAuth)
        .execute();
  }
}
