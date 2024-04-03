import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Utilities {
  static Future Downloaddata(String link) async {
    final url = Uri.http("gist.githubusercontent.com", link, {});
    try {
      final response = await http.get(url);
      // print("Response $response");
       print("status${response.statusCode}");
      // print("Body${response.body}");
      final jsonResponse = convert.jsonDecode(response.body);
      // print(jsonResponse);
      return jsonResponse;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
