import 'package:flutter/material.dart';
import '../models/user_model.dart';

class ProfileProvider with ChangeNotifier {
  UserModel _user = UserModel(
    name: "Marvis Ighedosa",
    email: "Dosamarvis@gmail.com",
    phone: "+234 9011039271",
    address: "No 15 Uti street off Ovie Palace Road, Effurun, Delta State",
    profileImage: "assets/profile.png", // Replace with your asset
  );

  UserModel get user => _user;

  void updateUser(UserModel newUser) {
    _user = newUser;
    notifyListeners();
  }
}
