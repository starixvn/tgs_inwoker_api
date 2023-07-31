part of api;

class MessageRepository extends BaseRepository {
  static MessageRepository? _singleton;
  UserProfile? userProfile;
  List<GameProvider>? gameProviderList;

  static MessageRepository getSingleton() {
    if (_singleton == null) {
      _singleton = MessageRepository();
    }
    return _singleton!;
  }

  getLanguage() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    var languageCode = _prefs.getString("LANGUAGE_CODE") ?? "en-US";
    /*if (languageCode == "zh-TW")
      return "zh-CN";
    else*/
    return languageCode;
  }

  Future<EventResult<ListResponse<Message>>> getMessageList(int page, int rows) async {
    return await ApiRequestBuilder<ListResponse<Message>>(
            method: HttpMethod.GET,
            endPoint: "api/letter/${await getLanguage()}",
            params: {
              "page": page.toString(),
              "rows": rows.toString(),
            },
            converter: (json) => ListResponse.fromJson(json, (res) => Message.fromJson(res as Map<String, dynamic>)),
            jwtRefresher: jwtAuth)
        .execute();
  }

  Future<EventResult<dynamic>> readMessage(List<String?> id) async {
    return await ApiRequestBuilder<dynamic>(method: HttpMethod.POST, endPoint: "api/letter", params: id, jwtRefresher: jwtAuth).execute();
  }

  Future<EventResult<ListResponse<StationLetter>>> getStationLetterList() async {
    return await ApiRequestBuilder<ListResponse<StationLetter>>(
      method: HttpMethod.GET,
      endPoint: "api/station-letter",
      converter: (json) => ListResponse.fromJson(json, (res) => StationLetter.fromJson(res as Map<String, dynamic>)),
      jwtRefresher: jwtAuth,
    ).execute();
  }

  Future<EventResult<StationLetter>> getStationLetterDetails(String id) async {
    return await ApiRequestBuilder<StationLetter>(
      method: HttpMethod.GET,
      endPoint: "api/station-letter/$id",
      converter: (json) => StationLetter.fromJson(json),
      jwtRefresher: jwtAuth,
    ).execute();
  }

  Future<EventResult<dynamic>> postStationLetter(String subject, String content) async {
    return await ApiRequestBuilder<dynamic>(
      method: HttpMethod.PUT,
      endPoint: "api/station-letter",
      params: {"subject": subject, "content": content},
      jwtRefresher: jwtAuth,
    ).execute();
  }

  Future<EventResult<dynamic>> replyStationLetter(String id, String content) async {
    return await ApiRequestBuilder<dynamic>(
      method: HttpMethod.PUT,
      endPoint: "api/station-letter/$id/:reply",
      params: {"content": content},
      jwtRefresher: jwtAuth,
    ).execute();
  }

  Future<EventResult<dynamic>> readStationLetter(String id) async {
    return await ApiRequestBuilder<dynamic>(
      method: HttpMethod.PATCH,
      endPoint: "api/station-letter/$id/:read",
      jwtRefresher: jwtAuth,
    ).execute();
  }

  Future<EventResult<ListResponse<DeliveryBox>>> getDeliveryBoxList(int page, int row) async {
    return await ApiRequestBuilder<ListResponse<DeliveryBox>>(
      method: HttpMethod.PUT,
      endPoint: "api/delivery-box",
      params: {"page": page, "rows": row},
      converter: (json) => ListResponse.fromJson(json, (res) => DeliveryBox.fromJson(res as Map<String, dynamic>)),
      jwtRefresher: jwtAuth,
    ).execute();
  }

  Future<EventResult<DeliveryBox>> getDeliveryBoxDetails(String id) async {
    return await ApiRequestBuilder<DeliveryBox>(
      method: HttpMethod.GET,
      endPoint: "api/delivery-box/$id",
      converter: (json) => DeliveryBox.fromJson(json),
      jwtRefresher: jwtAuth,
    ).execute();
  }
}
