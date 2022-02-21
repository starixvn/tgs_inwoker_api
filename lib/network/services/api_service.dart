part of api;

http.Client? client;
//const timeoutDuration = Duration(seconds: 3);

Future<http.Response> api(HttpMethod method, final endPoint,
    {final content, isAuthorization = true, imageContent, timeout = 3, isAssetUrl = false, isAutoHeader = true}) async {
  if (client == null) {
    client = http.Client();
  }

  var header = isAutoHeader ? await _getHeader(isAuthorization) : Map<String, String>();
  var url = (isAssetUrl ? env.assetUrl : env.url) + endPoint;

  var timeoutDuration = Duration(seconds: timeout);

  var onTimeout = () {
    // CustomToast.show("Debug:Timeout -> $url");
    print("Debug:Timeout -> $url");
    return api(method, endPoint,
        content: content,
        isAuthorization: isAuthorization,
        timeout: timeout,
        isAssetUrl: isAssetUrl,
        isAutoHeader: isAutoHeader);
  };
  print("Api->${method.getName}:$url");
  print(content);
  http.Response response;
  switch (method) {
    case HttpMethod.POST:
      response = await client!
          .post(
            Uri.parse(url),
            headers: header,
            body: jsonEncode(content),
          )
          .timeout(timeoutDuration, onTimeout: onTimeout);
      break;
    case HttpMethod.GET:
      {
        var queryParams;
        if (content is String)
          queryParams = "/" + content;
        else
          queryParams = "?" + Uri(queryParameters: content).query;

        print("Api->Start ${method.getName}:$url");

        response = await client!
            .get(
              Uri.parse(url + queryParams),
              headers: header,
            )
            .timeout(timeoutDuration, onTimeout: onTimeout);
        ;
        print("Api->End ${method.getName}:$url");
      }
      break;
    case HttpMethod.DELETE:
      response = await client!
          .delete(
            Uri.parse(url),
            headers: header,
          )
          .timeout(timeoutDuration, onTimeout: onTimeout);
      ;
      break;
    case HttpMethod.PATCH:
      response = await client!
          .patch(
            Uri.parse(url),
            headers: header,
            body: jsonEncode(content),
          )
          .timeout(timeoutDuration, onTimeout: onTimeout);
      break;
    case HttpMethod.PUT:
      response = await client!
          .put(
            Uri.parse(url),
            headers: header,
            body: jsonEncode(content),
          )
          .timeout(timeoutDuration, onTimeout: onTimeout);
      break;

    case HttpMethod.MULTIPART:
      var _content = content == null ? url : url + "/" + content;
      var request = http.MultipartRequest("POST", Uri.parse(_content));
      header.forEach((k, v) {
        request.headers[k] = v;
      });
      //request.files.add(await http.MultipartFile.fromPath('file', imageContent));
      request.files.add(await http.MultipartFile.fromPath('file', imageContent.path,
          contentType: new MediaType('image', p.extension(imageContent))));
      var imageRes = await request.send();
      response = await http.Response.fromStream(imageRes).timeout(timeoutDuration, onTimeout: onTimeout);
      ;
      break;
    default:
      response = await client!
          .post(
            Uri.parse(url),
            headers: header,
            body: jsonEncode(content),
          )
          .timeout(timeoutDuration, onTimeout: onTimeout);
      break;
  }

  log("Api<-Done:${response.statusCode} \n ${response.body}");
  return response;
}

_getHeader(bool isAuthorization) async {
  Map<String, String> _header = {
    "Content-Type": "application/json; charset=utf-8",
    "Accept-Language": await getLanguage()
  };
  await _getAuthorizationToken(_header);
  if (isAuthorization) await _getToken(_header);
  return _header;
}

getLanguage() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  var languageCode = _prefs.getString("LANGUAGE_CODE") ?? "en-US";
  return languageCode;
}

_getAuthorizationToken(Map<String, String> header) async {
  var prefs = await SharedPreferences.getInstance();
  String? authToken = prefs.getString("auth_token");
  if (authToken != null) {
    header["Authorization"] = "Bearer " + authToken;
  }
  print(authToken);
}

_getToken(Map<String, String> header) async {
  var prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString("token");
  if (token != null) {
    header["Token"] = token;
  }
}
