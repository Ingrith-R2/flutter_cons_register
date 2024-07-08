import 'package:flutter/material.dart';
import 'package:flutter_con_register/models/perro.dart';
import '../models/perro.dart';
import '../services/perro_service.dart';

class PerroProvider with ChangeNotifier{
  final ApiService _apiService = ApiService();
  List<Perro> _perroList = [];
  bool _isLoading = false;

  List<Perro> get perroList => _perroList;
  bool get isLoading => _isLoading;

  Future<void> fetchPerro() async {
    _isLoading = true;
    notifyListeners();

    _perroList = await _apiService.fetchPerroList();
    _isLoading = false;
    notifyListeners();
  }
}