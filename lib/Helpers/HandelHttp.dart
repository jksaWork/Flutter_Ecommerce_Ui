import 'dart:convert';

import 'package:http/http.dart' as http;

class HandelHttp {
  getRequest(String url) async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print('GooD Respone ');
        var jsonresponse = jsonDecode(response.body);
        print(jsonresponse);
        return jsonresponse;
      } else {
        print('some thing wnet worng');
      }
    } catch (e) {
      print('$e');
    }
  }

  postRequest(String url, Map data) async {
    try {
      var response = await http.post(Uri.parse(url), body: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var jsonresponse = jsonDecode(response.body);
        print(jsonresponse);
        return jsonresponse;
      } else {
        print('some thing went worng');
        print(response.statusCode);
      }
    } catch (e) {
      print('$e');
    }
  }
}
