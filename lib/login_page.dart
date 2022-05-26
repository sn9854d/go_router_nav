import 'package:flutter/material.dart';

class LoginInfo with ChangeNotifier {
  var _isLoggedin = false;

  bool get isLoggedIn => _isLoggedin;

  set isLoggedIn(bool value) {
    _isLoggedin = value;
    notifyListeners();
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key, required this.loginInfo}) : super(key: key);
  final LoginInfo loginInfo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            loginInfo.isLoggedIn = true;
          },
          child: const Text('LoginPage'),
        ),
      ),
    );
  }
}
