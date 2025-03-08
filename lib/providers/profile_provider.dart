import 'package:flutter/material.dart';

class ProfileProvider with ChangeNotifier {
  String _name = "Marvis Ighedosa";
  String _email = "Dosamarvis@gmail.com";
  String _phone = "+234 9011039271";
  String _address = "No 15 uti street off ovie palace road effurun delta state";

  String get name => _name;
  String get email => _email;
  String get phone => _phone;
  String get address => _address;

  void updateProfile(String name, String email, String phone, String address) {
    _name = name;
    _email = email;
    _phone = phone;
    _address = address;
    notifyListeners();
  }
}