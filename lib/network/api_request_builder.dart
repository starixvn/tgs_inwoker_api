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

  ApiRequestBuilder({
    this.isAuthorization = true,
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
  });

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
    var result = resolveBaseResponse(response, isWithoutBaseResponse, converter, consumer);
    if (result.errorCode == 101 && retryCounter < 2 && !isJWTAuthRequest && !isWithoutBaseResponse) {
      retryCounter++;
      await jwtRefresher!();
      return execute();
    }
    return result;
  }

  EventResult<T> resolveBaseResponse<T>(http.Response response, bool isWithoutBaseResponse,
      [ResponseResultConverter<T>? converter, void Function(T)? onSuccess]) {
    if (!isWithoutBaseResponse) {
      //need to convert to BaseResponse
      var value = json.decode(response.body);
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
        return EventResult.failure(baseResponse.error!, baseResponse.msg!, baseResponse.errorMsgId!);
      }
    } else {
      //doesnt need to convert to BaseResponse
      var value = utf8.decode(response.bodyBytes);
      print(value);
      var result = converter == null ? value as T : converter(json.decode(value));
      if (onSuccess != null) onSuccess(result);
      return EventResult.success(result);
    }
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
