import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nav2_go_router/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String isLoggedIng = 'isLoggedIn';

class LoginInfo with ChangeNotifier {
  var _isLoggedin = false;
  final SharedPreferences sharedPreferences;

  LoginInfo({required this.sharedPreferences});

  bool isLoggedIn() {
    if (!_isLoggedin) {
      final value = sharedPreferences.getBool(isLoggedIng);
      _isLoggedin = value ?? false;
    }
    return _isLoggedin;
  }

  Future<void> toggleLoginState(bool value) async {
    _isLoggedin = value;
    debugPrint("loggin in: $value");
    await sharedPreferences.setBool(isLoggedIng, value);
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
          onPressed: () async {
            await loginInfo.toggleLoginState(true);
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
