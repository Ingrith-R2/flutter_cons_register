import 'package:flutter_con_register/models/perro.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/perro.dart';

class ApiService {
  final String baseUrl = "https://perroapi.co/api/v2";

  Future<List<Perro>> fetchPokemonList() async {
    final response = await http.get(Uri.parse('$baseUrl/perro?limit=10'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List results = data['results'];
      return results.map((e) => Perro.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load Perro');
    }
  }

  fetchPerroList() {}
}