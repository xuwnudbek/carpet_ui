// ignore_for_file: non_constant_identifier_names

import 'package:carpet_ui/controllers/storage/storage_service.dart';
import 'package:http/http.dart' as http;

class URL {
// https://u12889.xvest5.ru/user/getdriver

  static String domain = "u12889.xvest5.ru";

  static String register = "auth/register";
  static String login = "auth/login";

  static String me = "";
}

class HttpService {
  static Map<String, String> headers = {
    "Content-Type": "application/json",
    "Authorixation": "Bearer ${StorageService.token}",
  };

  static Future GET(url, {params}) async {
    Uri uri = Uri.https(URL.domain, url, params);

    var res = await http.get(
      uri,
      headers: headers,
    );

    if (res.statusCode < 300) {
      return {
        "status": HttpResponse.success,
        "data": res.body,
      };
    } else {
      return {
        "status": HttpResponse.error,
        "data": res.body,
      };
    }
  }

  static Future POST(url, {body, params}) async {
    Uri uri = Uri.https(URL.domain, url, params);

    var res = await http.post(
      uri,
      body: body,
      headers: headers,
    );

    if (res.statusCode < 300) {
      return {
        "status": HttpResponse.success,
        "data": res.body,
      };
    } else {
      return {
        "status": HttpResponse.error,
        "data": res.body,
      };
    }
  }
}

enum HttpResponse { success, error }
