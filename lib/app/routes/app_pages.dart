import 'package:get/get.dart';
import 'package:whatsapp/app/home/home_binding.dart';

import '../home/home_view.dart';
import '../splash/splash_binding.dart';
import '../splash/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => const HomeView(),
        binding: HomeBinding()),
    GetPage(
        name: _Paths.SPLASH,
        page: () => const SplashView(),
        binding: SplashBinding()),
    //  GetPage(
    //name: _Paths.SIGN_IN,
    //page: () => const SignInView(),
    // binding: SignInBinding()),

    //GetPage(
    //name: _Paths.PROFIL,
    //page: () => const CreateUserView(),
    //binding: ProfilBinding()),
  ];
}
