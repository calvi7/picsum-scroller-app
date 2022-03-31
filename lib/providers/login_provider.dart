import 'package:flutter/material.dart';
import 'package:picsum_scroller_app/providers/models/user_model.dart';

class LoginProvider extends ChangeNotifier {
  User? currentUser;
  bool validLogin = false;

  bool _validateUsername(String userName) {
    if (userName.length < 3) {
      return false;
    }
    return true;
  }

  bool _validatePassword(String pass) {
    if (pass == '123456') {
      return true;
    }
    return false;
  }

  void attemptLogin(LoginData loginData) {
    if (_validatePassword(loginData.password) &&
        _validateUsername(loginData.userName)) {
      currentUser = loginData.toUser();
      validLogin = true;
      notifyListeners();
    }
  }
}

class LoginData {
  final String password;
  final String userName;

  LoginData(this.password, this.userName);

  User toUser() {
    return User(
        name: userName,
        profilePhotoPath:
            'https://www.dogtagart.com/sites/default/files/hotdog2.jpg');
  }
}
