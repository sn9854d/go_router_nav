import 'package:get_it/get_it.dart';
import 'package:nav2_go_router/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

// because GetIt is singleton
final sl = GetIt.instance;

Future<void> init() async {
  //! loginInfo;
  sl.registerFactory<LoginInfo>(() => LoginInfo(sharedPreferences: sl()));

  //! external

  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}
