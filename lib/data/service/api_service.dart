import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://dummyjson.com";

  Future<List<dynamic>> getUsers() async {
    final response = await http.get(Uri.parse("$baseUrl/users"));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['users'];
    } else {
      throw Exception("Failed to load users");
    }
  }

  Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await http.post(
      Uri.parse("$baseUrl/auth/login"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "username": username,
        "password": password,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Invalid Credentials");
    }
  }
  Future<List<dynamic>> filterUsers(String key, String value) async {
    final response = await http.get(
      Uri.parse("$baseUrl/users/filter?$key=$value"),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body)['users'];
    } else {
      throw Exception("Filter failed");
    }
  }
  Future<Map<String, dynamic>> updateUser(int id, Map<String, dynamic> body) async {
    final response = await http.put(
      Uri.parse("$baseUrl/users/$id"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Update failed");
    }
  }
  Future<List<dynamic>> searchUsers(String query) async {
    final response = await http.get(
      Uri.parse("$baseUrl/users/search?q=$query"),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body)['users'];
    } else {
      throw Exception("Search failed");
    }
  }

}
