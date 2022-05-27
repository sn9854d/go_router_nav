import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nav2_go_router/colors.dart';

class LoginInfo with ChangeNotifier {
  var _isLoggedin = false;

  bool get isLoggedIn => _isLoggedin;

  set isLoggedIn(bool value) {
    _isLoggedin = value;
    notifyListeners();
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key, required this.loginInfo, this.from})
      : super(key: key);
  final LoginInfo loginInfo;
  final String? from;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            loginInfo.isLoggedIn = true;
            if (from != null) {
              context.go(from!);
            }
          },
          child: const Text('Login'),
          style: TextButton.styleFrom(
            backgroundColor: kColor1,
            textStyle: GoogleFonts.lato().copyWith(color: kColor5),
          ),
        ),
      ),
    );
  }
}
