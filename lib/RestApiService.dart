import 'dart:convert';
//import 'package:http/http.dart' as http;

class RestApiService{
  final String apiUrl = "";

  Future<dynamic> postRequest(Map<String, dynamic> data) async {
    /*
    final response = await http.post(Uri.parse(apiUrl),
    headers: <String, String> {
    'Content-Type' : 'application/json; charset=UTF-8',
    },
    body: jsonEncode(data));
  */
  }
}