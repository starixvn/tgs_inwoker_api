part of api;

class ContentRepository extends BaseRepository {
  static ContentRepository? _singleton;
  UserProfile? userProfile;
  List<GameProvider>? gameProviderList;
  List<LanguageOption>? languageOptionList;
  BrandLogo? brandLogo;
  EnvFeaturesConfig? featuresConfig;
  Announcement? announcement;
  List<CampaignDetails>? campaignDetails;
  List<GameProvider2>? gameProvider2List;
  String? maintenanceBeginTime, maintenanceEndTime, maintenanceContent;

  static ContentRepository getSingleton() {
    if (_singleton == null) {
      _singleton = ContentRepository();
    }
    return _singleton!;
  }

  getLanguage() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    var languageCode = _prefs.getString("LANGUAGE_CODE") ?? "en-US";
    return languageCode;
  }

  Future<EventResult<List<GameProvider>>> getGameProviderList() async {
    return await ApiRequestBuilder<List<GameProvider>>(
            isAuthorization: false,
            method: HttpMethod.GET,
            endPoint: "api/GameProvider/list",
            params: {"platformtype": "1", "language": await getLanguage(), "currency": env.currency},
            converter: (json) => (json as List<dynamic>).map((e) => GameProvider.fromJson(e)).toList(),
            consumer: (result) => setRepoValues(() {
                  gameProviderList = result;
                  gameProvider2List = [];
                  result!.forEach((e) {
                    if (e.gameTypes != null) {
                      e.gameTypes!.forEach((element) {
                        if ((!(element == GameType.VirtualSportsLobby || element == GameType.VirtualSports) ||
                            (element == GameType.VirtualSports && e.code == "PPTF"))) {
                          gameProvider2List!
                              .add(GameProvider2(element, e.code, e.name, e.description, e.status, e.transferWallet));

                          //sort list with gameType for displaying VirtualSports after Sportsbook
                          gameProvider2List!.sort(((a, b) => (a.gameType.toString()).compareTo(b.gameType.toString())));
                        }
                      });
                    }
                  });
                }),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<List<Game>>> getGameList(String gamePlatformCode, GameType gameType) async {
    return await ApiRequestBuilder<List<Game>>(
            isAuthorization: false,
            method: HttpMethod.GET,
            endPoint: "api/Game/list",
            params: {
              "gpcode": gamePlatformCode,
              "gametypes": gameType.getJsonValue.toString(),
              "platformtype": "1",
              "language": await getLanguage(),
              "currency": env.currency
            },
            converter: (json) => (json as List<dynamic>).map((e) => Game.fromJson(e)).toList(),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<GameUrlResponse>> getGameUrl(String gamePlatformCode, int gameId, String lobbyUrl) async {
    return await ApiRequestBuilder<GameUrlResponse>(
            method: HttpMethod.POST,
            endPoint: "api/Game/geturl",
            params: {
              "gpcode": gamePlatformCode,
              "gid": gameId.toString(),
              "language": await getLanguage(),
              "extends": {"lobbyurl": lobbyUrl}
            },
            converter: (json) => GameUrlResponse.fromJson(json),
            jwtRefresher: jwtAuth,
            timeout: 20)
        .execute();
  }

  Future<EventResult<GameUrlResponse>> getLobbyGameUrl(
      String gamePlatformCode, GameType gameType, String lobbyUrl) async {
    return await ApiRequestBuilder<GameUrlResponse>(
            method: HttpMethod.POST,
            endPoint: "api/Game/lobby/geturl",
            params: {
              "gpcode": gamePlatformCode,
              "gtype": gameType.getJsonValue,
              "language": await getLanguage(),
              "extends": {"lobbyurl": lobbyUrl}
            },
            converter: (json) => GameUrlResponse.fromJson(json),
            jwtRefresher: jwtAuth,
            timeout: 20)
        .execute();
  }

  Future<EventResult<Announcement>> getAnnouncement() async {
    return await ApiRequestBuilder<Announcement>(
            method: HttpMethod.GET,
            isAuthorization: false,
            endPoint: "api/announcement/list/${await getLanguage()}",
            converter: (json) => Announcement.fromJson(json),
            consumer: (result) => setRepoValues(() {
                  announcement = result;
                }),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<List<Promotion>>> getPromotionList() async {
    return await ApiRequestBuilder<List<Promotion>>(
            method: HttpMethod.GET,
            endPoint: "api/promotion",
            converter: (json) => (json as List<dynamic>).map((e) => Promotion.fromJson(e)).toList(),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> joinPromotion(String id) async {
    return await ApiRequestBuilder<dynamic>(
            method: HttpMethod.POST, endPoint: "api/promotion/$id/join", jwtRefresher: jwtAuth)
        .execute();
  }

  /*Future<EventResult<ListResponse<Promotion>>> getPlayerPromotionList(int page, int rows, bool desc, bool all) async {
    return await ApiRequestBuilder<ListResponse<Promotion>>(
        method: HttpMethod.GET,
        endPoint: "api/playerpromotion/${await getLanguage()}",
        params: {
          "page": page.toString(),
          "rows": rows.toString(),
          "desc": desc.toString(),
          "all": all.toString(),
        },
        converter: (json) => ListResponse.fromJson(json, (res) => Promotion.fromJson(res)),
        jwtRefresher: jwtAuth)
        .execute();
  }*/

  Future<EventResult<List<int>>> getFavoriteGame(GameType? gameType) async {
    return await ApiRequestBuilder<List<int>>(
            method: HttpMethod.GET,
            endPoint: "api/game/favorite/${gameType?.getJsonValue}",
            converter: (json) => json.cast<int>(),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> setFavoriteGame(int? gameId) async {
    return await ApiRequestBuilder<dynamic>(
            method: HttpMethod.PUT,
            endPoint: "api/game/favorite/$gameId",
            //converter: (json) => ListResponse.fromJson(json, (res) => Promotion.fromJson(res)),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> deleteFavoriteGame(int? gameId) async {
    return await ApiRequestBuilder<dynamic>(
            method: HttpMethod.DELETE,
            endPoint: "api/game/favorite/$gameId",
            //converter: (json) => ListResponse.fromJson(json, (res) => Promotion.fromJson(res)),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<List<LanguageOption>>> getLanguageOption() async {
    return await ApiRequestBuilder<List<LanguageOption>>(
            method: HttpMethod.GET,
            endPoint: "api/brandlanguage",
            converter: (json) => (json as List<dynamic>).map((e) => LanguageOption.fromJson(e)).toList(),
            consumer: (result) => setRepoValues(() {
                  languageOptionList = result;
                }),
            jwtRefresher: jwtAuth,
            isAuthorization: false)
        .execute();
  }

  Future<EventResult<List<HomeBanner>>> getBanner() async => await ApiRequestBuilder<List<HomeBanner>>(
        method: HttpMethod.GET,
        endPoint: "api/banner",
        converter: (json) => (json as List<dynamic>).map((e) => HomeBanner.fromJson(e)).toList(),
        jwtRefresher: jwtAuth,
        isAuthorization: false,
      ).execute();

  Future<EventResult<BrandLogo>> getBrandLogo() async {
    return await ApiRequestBuilder<BrandLogo>(
      method: HttpMethod.GET,
      endPoint: "api/brand",
      converter: (json) => BrandLogo.fromJson(json),
      jwtRefresher: jwtAuth,
      isAuthorization: false,
      consumer: (result) => setRepoValues(() {
        brandLogo = result;
      }),
    ).execute();
  }

  Future<EventResult<dynamic>> getBetConstructHtml() async {
    return await ApiRequestBuilder<dynamic>(
      method: HttpMethod.GET,
      endPoint: "api/game/bc",
      jwtRefresher: jwtAuth,
      isWithoutBaseResponse: true,
    ).execute();
  }

  Future<EventResult<dynamic>> getVersionJson(String brand) async {
    return await ApiRequestBuilder<dynamic>(
      method: HttpMethod.GET,
      endPoint: "version_${brand}.json",
      isAssetUrl: true,
      isAutoHeader: false,
      isWithoutBaseResponse: true,
    ).execute();
  }

  Future<EventResult<EnvFeaturesConfig>> getEnvFeaturesJson(String brand) async {
    return await ApiRequestBuilder<EnvFeaturesConfig>(
            method: HttpMethod.GET,
            endPoint: "features_${brand}.json",
            isAssetUrl: true,
            isAutoHeader: false,
            isWithoutBaseResponse: true,
            converter: (json) => EnvFeaturesConfig.fromJson(json),
            consumer: (result) => setRepoValues(() {
                  featuresConfig = result;
                }),
            isFeatures: true)
        .execute();
  }

  Future<EventResult<ListResponse<Vip>>> getVip(int page, int rows, bool desc, bool all) async {
    return await ApiRequestBuilder<ListResponse<Vip>>(
            method: HttpMethod.GET,
            endPoint: "api/vip",
            params: {
              "page": page.toString(),
              "rows": rows.toString(),
              "desc": desc.toString(),
              //"sort":"",
              "all": all.toString(),
            },
            converter: (json) => ListResponse.fromJson(json, (res) => Vip.fromJson(res as Map<String, dynamic>)),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<Roulette>> getRouletteTodayResult(String promotionId) async {
    //會回傳當日的結果，如果有結果代表已經玩過
    return await ApiRequestBuilder<Roulette>(
      method: HttpMethod.GET,
      endPoint: "api/sie/roulette/$promotionId",
      jwtRefresher: jwtAuth,
      converter: (json) => Roulette.fromJson(json),
    ).execute();
  }

  Future<EventResult<Roulette>> getRouletteResult(String promotionId) async {
    //會回傳遊玩結果，如果未玩過則產生結果，如果已玩過，則回傳已玩過結果
    return await ApiRequestBuilder<Roulette>(
      method: HttpMethod.POST,
      endPoint: "api/sie/roulette/$promotionId",
      jwtRefresher: jwtAuth,
      converter: (json) => Roulette.fromJson(json),
    ).execute();
  }

  Future<EventResult<dynamic>> getMaintenanceDetails() async {
    return await ApiRequestBuilder<dynamic>(
      method: HttpMethod.GET,
      endPoint: "api/brand/maintenance",
      jwtRefresher: jwtAuth,
      consumer: (result) => setRepoValues(() {
        maintenanceBeginTime = result["beginTime"];
        maintenanceEndTime = result["endTime"];
        maintenanceContent = result["content"];
      }),
    ).execute();
  }
}
