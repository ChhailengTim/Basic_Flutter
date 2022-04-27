import 'dart:convert';
import 'package:get/get_connect.dart';

class ErrorModel {
  final int? statusCode;
  final dynamic bodyString;
  const ErrorModel({this.statusCode, this.bodyString});
}

enum METHODE {
  get,
  post,
  delete,
  update,
}

class ApiBaseHelper extends GetConnect {
  final String? baseurl = "https://api.coindesk.com";

  Future<dynamic> onNetworkRequesting({
    required String url,
    String? fullUrls,
    Map<String, String>? header,
    Map<String, dynamic>? body,
    required METHODE? methode,
    required bool isAuthorize,
    bool isConvertToByte = false,
  }) async {
    const token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjQ3NDA0OTc1LCJpYXQiOjE2NDY4MDAxNzUsImp0aSI6IjIzNGViZjMwMTU0YTRjZGQ4MmFlNGIxMzU4NmY2YWNlIiwidXNlcl9pZCI6OTR9.Qg0TjHTMJ35FhPFkXsQEuX9Lln2uj4FNs6ujW3VFlmI";

    final fullUrl = fullUrls ??
        baseurl! + url; //http://178.128.110.188/api/v1/customer-address/get/
    Map<String, String> _header = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': isAuthorize ? 'Bearer $token' : ""
    };

    try {
      switch (methode) {
        case METHODE.get:
          final response = await get(fullUrl, headers: header ?? _header);
          return _returnResponse(response, isConvertToByte);
        case METHODE.post:
          if (body != null) {
            final response = await post(fullUrl, json.encode(body),
                headers: header ?? _header);
            return _returnResponse(response, isConvertToByte);
          }
          return Future.error(
              const ErrorModel(bodyString: 'Body must be included'));

        case METHODE.delete:
          final response = await delete(fullUrl, headers: header ?? _header);
          return _returnResponse(response, isConvertToByte);
        case METHODE.update:
          if (body != null) {
            final response = await put(fullUrl, json.encode(body),
                headers: header ?? _header);
            return _returnResponse(response, isConvertToByte);
          }
          return Future.error(
              const ErrorModel(bodyString: 'Body must be included'));

        default:
          break;
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  dynamic _returnResponse(Response response, bool isReturnBytes) {
    switch (response.statusCode) {
      case 200:
        var responseJson = isReturnBytes
            ? response.bodyBytes
            : json.decode(response.bodyString!);
        return responseJson;
      case 201:
        var responseJson = isReturnBytes
            ? response.bodyBytes
            : json.decode(response.bodyString!);
        return responseJson;
      case 202:
        var responseJson = isReturnBytes
            ? response.bodyBytes
            : json.decode(response.bodyString!);
        return responseJson;
      case 404:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
      case 400:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
      case 401:
      case 403:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
      case 500:
        break;
      default:
        return Future.error(ErrorModel(
            statusCode: response.statusCode,
            bodyString: json.decode(response.bodyString!)));
    }
  }
}
