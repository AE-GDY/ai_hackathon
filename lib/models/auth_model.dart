import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AuthModel extends ChangeNotifier {
  static bool _isLogin = false;
  Map<String, dynamic> user = {}; //update user details when login
  Map<String, dynamic> appointment = {}; //update upcoming appointment when login

  bool get isLogin {
    return _isLogin;
  }

  static void setLogin(bool state){
    _isLogin = state;
  }

  void setUser(Map<String, dynamic> userData) async {
    user = userData;
  }

  Map<String, dynamic> get getUser {
    return user;
  }

  Map<String, dynamic> get getAppointment {
    return appointment;
  }

//when login success, update the status
  void loginSuccess(Map<String, dynamic> userData) {
    _isLogin = true;
    //update all these data when login
    user = userData;
    notifyListeners();
  }
}
