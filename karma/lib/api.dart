import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<CallApi> fetchAlbum() async {
  final response = await http.get(
    'https://reqres.in/api/login',
    headers: {HttpHeaders.authorizationHeader: "token"},
  );
  final responseJson = jsonDecode(response.body);

  return CallApi.fromJson(responseJson);
}

class CallApi {
  final String _url = 'https://reqres.in/api/';
  final String email;
  final String password;
  CallApi({
    this.email,
    this.password,
  });

  factory CallApi.fromJson(Map<String, dynamic> json) {
    return CallApi(
      email: json['email'],
      password: json['password'],
    );
  }

  postData(data, apiUrl) async {
    var fullUrl = _url + apiUrl;
    return await http.post(
      fullUrl,
      body: jsonEncode(data),
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': await _getToken(),
      },
    );
  }

  _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    return 'Bearer $token';
  }
}
