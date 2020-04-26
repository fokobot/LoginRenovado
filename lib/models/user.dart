import 'package:flutter/material.dart';

//enum Status { Authenticated, Unauthenticated }

class UserModel extends ChangeNotifier {
  bool status = false;
  String user;
  String password;

  void signIn(String email, String password) {
    this.user = email;
    this.password = password;
    this.status = true;
    notifyListeners();
  }

  void signOut() {
    this.user = "";
    this.password = "";
    this.status = false;
    notifyListeners();
  }
}
