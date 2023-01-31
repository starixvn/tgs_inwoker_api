part of api;

class AuthenticationRepository extends BaseRepository {
  static AuthenticationRepository? _singleton;
  UserProfile? userProfile;

  static AuthenticationRepository getSingleton() {
    if (_singleton == null) {
      _singleton = AuthenticationRepository();
    }
    return _singleton!;
  }

  Future<EventResult<dynamic>> emailVerify(String email) async {
    return await ApiRequestBuilder<dynamic>(
            endPoint: "api/Player/email",
            params: {
              "email": email,
            },
            jwtRefresher: jwtAuth,
            timeout: 10)
        .execute();
  }

  Future<EventResult<dynamic>> submitVerifyCode(String securityKey, String validateCode, {bool isPhone = false}) async {
    return await ApiRequestBuilder<dynamic>(
            method: HttpMethod.PUT,
            endPoint: isPhone ? "api/player/phone" : "api/player/email",
            params: {"securitykey": securityKey, "validatecode": validateCode},
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> getPhoneVerify(String area, String phone) async {
    return await ApiRequestBuilder<dynamic>(
            endPoint: "api/player/phone",
            params: {
              "area": area,
              "phone": phone,
            },
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> getForgotPasswordCode(String? email, String? phone, String? areaCode) async {
    return await ApiRequestBuilder<dynamic>(
            isAuthorization: false,
            endPoint: "api/player/password/forgot",
            params: {
              "email": email,
              "phone": phone,
              "areaCode": areaCode,
            },
            jwtRefresher: jwtAuth,
            timeout: 10)
        .execute();
  }

  Future<EventResult<dynamic>> resetPassword(String securityKey, String validateCode, String newPassword) async {
    return await ApiRequestBuilder<dynamic>(
            isAuthorization: false,
            endPoint: "api/player/password/reset",
            params: {"securitykey": securityKey, "validatecode": validateCode, "newpwd": newPassword},
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> addPayPassword(String password) async {
    return await ApiRequestBuilder<dynamic>(
            endPoint: "api/pay/password", params: {"pwd": password}, jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> getPayPasswordCode() async {
    return await ApiRequestBuilder<dynamic>(
            endPoint: "api/pay/password/validate-code", params: {}, jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> payPasswordVerify(String password, String code, String securityKey) async {
    return await ApiRequestBuilder<dynamic>(
            method: HttpMethod.PATCH,
            endPoint: "api/pay/password",
            params: {"newpwd": password, "validatecode": code, "securitykey": securityKey},
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> getReVerifyCode(
      String username, String password, String areaCode, String phone, String nextStepType,
      {bool isIdrRegister = false}) async {
    return await ApiRequestBuilder<dynamic>(
      endPoint: "api/player/${isIdrRegister ? "register" : "init-phone"}",
      params: isIdrRegister
          ? nextStepType == "SetPhoneDontCareDuplicate"
              ? {
                  "type": "SetPhoneDontCareDuplicate",
                  "input": {"areacode": areaCode, "phone": phone}
                }
              : {
                  "type": "InitPhone",
                  "input": {
                    "input": "Init",
                    "data": {"areacode": areaCode, "phone": phone}
                  }
                }
          : {"username": username, "pwd": password, "areacode": areaCode, "phone": phone},
      jwtRefresher: jwtAuth,
    ).execute();
  }

  Future<EventResult<dynamic>> phoneReVerify(String securityKey, validateCode, {bool isIdrRegister = false}) async {
    return await ApiRequestBuilder<dynamic>(
      method: isIdrRegister ? HttpMethod.POST : HttpMethod.PUT,
      endPoint: "api/player/${isIdrRegister ? "register" : "init-phone"}",
      params: isIdrRegister
          ? {
              "type": "InitPhone",
              "input": {
                "input": "Valid",
                "data": {"securitykey": securityKey, "validatecode": validateCode}
              }
            }
          : {"securitykey": securityKey, "validatecode": validateCode},
      jwtRefresher: jwtAuth,
    ).execute();
  }

  Future<EventResult<dynamic>> getEmailVerifyCode(String email, {bool isIdrRegister = false}) async {
    return await ApiRequestBuilder<dynamic>(
      method: HttpMethod.POST,
      endPoint: "api/player/${isIdrRegister ? "register" : "init-email"}",
      params: isIdrRegister
          ? {
              "type": "InitMail",
              "input": {
                "input": "Valid",
                "data": {"email": email}
              }
            }
          : {
              "email": email,
            },
      jwtRefresher: jwtAuth,
    ).execute();
  }

  Future<EventResult<dynamic>> emailVerification(String securityKey, validateCode, {bool isIdrRegister = false}) async {
    return await ApiRequestBuilder<dynamic>(
      method: isIdrRegister ? HttpMethod.POST : HttpMethod.PUT,
      endPoint: "api/player/${isIdrRegister ? "register" : "init-email"}",
      params: isIdrRegister
          ? {
              "type": "InitMail",
              "input": {
                "input": "Valid",
                "data": {"securitykey": securityKey, "validatecode": validateCode}
              }
            }
          : {"securitykey": securityKey, "validatecode": validateCode},
      jwtRefresher: jwtAuth,
    ).execute();
  }

  Future<EventResult<dynamic>> setPhoneDontCareDuplicate(
    String areaCode,
    String phone,
  ) async {
    return await ApiRequestBuilder<dynamic>(
      method: HttpMethod.POST,
      endPoint: "api/player/register",
      params: {
        "type": "SetPhoneDontCareDuplicate",
        "input": {"areacode": areaCode, "phone": phone}
      },
      jwtRefresher: jwtAuth,
    ).execute();
  }

  Future<EventResult<dynamic>> setEmailDontCareDuplicate(
    String email,
  ) async {
    return await ApiRequestBuilder<dynamic>(
      method: HttpMethod.POST,
      endPoint: "api/player/register",
      params: {
        "type": "SetEmailDontCareDuplicate",
        "input": {
          "email": email,
        }
      },
      jwtRefresher: jwtAuth,
    ).execute();
  }

  Future<EventResult<dynamic>> setRealName(
    String realname,
  ) async {
    return await ApiRequestBuilder<dynamic>(
      method: HttpMethod.POST,
      endPoint: "api/player/register",
      params: {
        "type": "SetRealName",
        "input": {
          "realname": realname,
        }
      },
      jwtRefresher: jwtAuth,
    ).execute();
  }
}
