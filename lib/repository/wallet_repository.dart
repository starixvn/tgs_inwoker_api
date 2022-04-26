part of api;

class WalletRepository extends BaseRepository {
  static WalletRepository? _singleton;

  static WalletRepository getSingleton() {
    if (_singleton == null) {
      _singleton = WalletRepository();
    }
    return _singleton!;
  }

  Future<EventResult<GameWallet>> getGameWallet(String? gpCode) async {
    return await ApiRequestBuilder<GameWallet>(
            method: HttpMethod.GET,
            endPoint: "api/game/balance/${gpCode}",
            converter: (json) => GameWallet.fromJson(json),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> fundTransfer(
      String? gpCode, int amount, bool isFundOut) async {
    return await ApiRequestBuilder<dynamic>(
            method: HttpMethod.PUT,
            endPoint: "api/game/balance/fund/${isFundOut ? "out" : "in"}",
            params: {"gpcode": gpCode, "amount": amount},
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> withdrawAllFund() async {
    return await ApiRequestBuilder<dynamic>(
            method: HttpMethod.POST,
            endPoint: "api/game/balance/fund/in",
            jwtRefresher: jwtAuth)
        .execute();
  }
}
