part of api;

//typedef T ResponseResultConverter<T>(dynamic);
class BaseRepository extends ChangeNotifier {
  Future<EventResult<LoginResponse>> jwtAuth() async {
    var apiState = await ApiRequestBuilder<LoginResponse>(
        isAuthorization: false,
        isJWTAuthRequest: true,
        endPoint: "api/Auth/jwt",
        params: {"client": env.jwtKey, "currency":env.currency},
        converter: (json) => LoginResponse.fromJson(json)).execute();

    if (apiState.isSuccess || apiState.isMaintenance) {
      var authToken = apiState.result?.token;
      _savePreferences(authToken!);
      print("Authorization:" + authToken);
    }
    return apiState;
  }

  _savePreferences(String authToken) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("auth_token", authToken);
  }

  setRepoValues(Function set) {
    set();
    notifyListeners();
  }

  getData(String url, jwtKey, currency){
    env = EnvConfig(url, jwtKey, currency);
  }
}
