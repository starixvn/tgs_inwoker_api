part of api;

typedef T ResponseResultConverter<T>(dynamic);
typedef Future JwtRefresher();
typedef void ResultConsumer(T);

class ApiRequestBuilder<T> extends ChangeNotifier {
  bool isAuthorization;
  bool isJWTAuthRequest;
  HttpMethod method;
  String endPoint;
  dynamic params;
  ResponseResultConverter<T> converter;
  int retryCounter = 0;
  JwtRefresher jwtRefresher;
  ResultConsumer consumer;
  dynamic imageContent;

  ApiRequestBuilder(
      {this.isAuthorization = true,
      this.isJWTAuthRequest = false,
      this.method = HttpMethod.POST,
      this.endPoint,
      this.params,
      this.converter,
      this.jwtRefresher,
      this.consumer,
      this.imageContent});

  Future<EventResult<T>> execute() async {
    var response = await api(method, endPoint, content:params, isAuthorization: isAuthorization, imageContent: imageContent);
    var result = resolveBaseResponse(response, converter, consumer);
    if (result.errorCode == 101 && retryCounter < 2 && !isJWTAuthRequest) {
      retryCounter++;
      await jwtRefresher();
      return execute();
    }
    return result;
  }

  EventResult<T> resolveBaseResponse<T>(http.Response response,
      [ResponseResultConverter<T> converter, void Function(T) onSuccess]) {
    var value = json.decode(response.body);
    print(value);
    var baseResponse = BaseResponse.fromJson(value);
    if (baseResponse.error == null ||
        (baseResponse.success == null && baseResponse.error == 0) ||
        (baseResponse.success != null && baseResponse.success)) {
      var dataToConvert = baseResponse.data ?? value;
      var result = converter == null ? dataToConvert as T : converter(dataToConvert);
      if (onSuccess != null) onSuccess(result);
      return EventResult.success(result);
    } else {
      return EventResult.failure(baseResponse.error, baseResponse.msg, baseResponse.errorMsgId);
    }
  }
}
