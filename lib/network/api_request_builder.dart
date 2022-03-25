part of api;

typedef T ResponseResultConverter<T>(dynamic);
typedef Future JwtRefresher();
typedef void ResultConsumer(T);

class ApiRequestBuilder<T> extends ChangeNotifier {
  bool isAuthorization;
  bool isJWTAuthRequest;
  HttpMethod method;
  String? endPoint;

  dynamic params;
  ResponseResultConverter<T>? converter;
  int retryCounter = 0;
  JwtRefresher? jwtRefresher;
  ResultConsumer? consumer;
  dynamic imageContent;
  int timeout;
  bool isAssetUrl;
  bool isAutoHeader;
  bool isWithoutBaseResponse;
  bool isFeatures;

  ApiRequestBuilder(
      {this.isAuthorization = true,
      this.isJWTAuthRequest = false,
      this.method = HttpMethod.POST,
      this.endPoint,
      this.params,
      this.converter,
      this.jwtRefresher,
      this.consumer,
      this.imageContent,
      this.timeout = 3,
      this.isAssetUrl = false,
      this.isAutoHeader = true,
      this.isWithoutBaseResponse = false,
      this.isFeatures = false});

  Future<EventResult<T>> execute() async {
    var response = await api(
      method,
      endPoint,
      content: params,
      isAuthorization: isAuthorization,
      imageContent: imageContent,
      timeout: timeout,
      isAssetUrl: isAssetUrl,
      isAutoHeader: isAutoHeader,
    );
    var result = await resolveBaseResponse(response, isWithoutBaseResponse, converter, consumer, isFeatures);
    if ((result.errorCode == 101 || result.errorCode == 102) &&
        retryCounter < 2 &&
        !isJWTAuthRequest &&
        !isWithoutBaseResponse) {
      retryCounter++;
      await jwtRefresher!();
      return execute();
    }
    return result;
  }

  Future<EventResult<T>> resolveBaseResponse<T>(http.Response response, bool isWithoutBaseResponse,
      [ResponseResultConverter<T>? converter, void Function(T)? onSuccess, bool? isFeatures]) async {
    if (!isWithoutBaseResponse) {
      var value;
      //need to convert to BaseResponse
      try {
        value = json.decode(response.body);
      } on Exception catch (_) {
        print("throwing new error");
        return EventResult.failure();
        //throw Exception("Error on server");
      }
      print(value);
      var baseResponse = BaseResponse.fromJson(value);
      if (baseResponse.error == null ||
          (baseResponse.error == 0 && baseResponse.errorMsgId == null && (baseResponse.msg?.isEmpty ?? false)) ||
          (baseResponse.success == null &&
              baseResponse.error == 0 &&
              baseResponse.errorMsgId == null &&
              (baseResponse.msg?.isEmpty ?? false)) ||
          (baseResponse.success ?? false)) {
        var dataToConvert = baseResponse.data ?? value;
        var result = converter == null ? dataToConvert as T : converter(dataToConvert);
        if (onSuccess != null) onSuccess(result);
        if (response.statusCode == 503 ||
            response.statusCode == 403 ||
            baseResponse.error == 403 ||
            baseResponse.errorMsgId == "UnderMaintenance")
          return EventResult.maintenance(result: result);
        else
          return EventResult.success(result);
      } else {
        return EventResult.failure(errorCode:baseResponse.error!, error:baseResponse.msg!, errorMsgId:baseResponse.errorMsgId ?? "");
      }
    } else {
      //doesnt need to convert to BaseResponse
      var value;
      if (response.statusCode == 200) {
        value = utf8.decode(response.bodyBytes);
      } else if (isFeatures ?? false) {
        value = await getJson();
      }
      var result = converter == null ? value as T : converter(json.decode(value));
      if (onSuccess != null) onSuccess(result);
      return EventResult.success(result);
    }
  }

  Future<String> getJson() async {
    return await rootBundle.loadString('features/features_default.json');
  }
/*
  Future<EventResult<T>> executeWithoutBaseResponse() async {
    var response = await api(method, endPoint,
        content: params,
        isAuthorization: isAuthorization,
        imageContent: imageContent,
        timeout: timeout,
        isAssetUrl: isAssetUrl,
        isAutoHeader: isAutoHeader);
    var result = resolveWithoutBaseResponse(response, converter, consumer);
    // if (retryCounter < 2 && !isJWTAuthRequest) {
    //   retryCounter++;
    //   await jwtRefresher!();
    //   return executeWithoutBaseResponse();
    // }
    return result;
  }

  EventResult<T> resolveWithoutBaseResponse<T>(http.Response response,
      [ResponseResultConverter<T>? converter, void Function(T)? onSuccess]) {
    var value = response.body;
    var result = converter == null ? value as T : converter(value);
    // if (value != null) {
    return EventResult.success(result);
  }*/
}
