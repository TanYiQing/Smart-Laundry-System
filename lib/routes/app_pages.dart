import 'package:final_year_project/middleware/router_auth.dart';
import 'package:final_year_project/pages/intro/binding/intro_binding.dart';
import 'package:final_year_project/pages/intro/view/intro.dart';
import 'package:final_year_project/pages/login/binding/login_binding.dart';
import 'package:final_year_project/pages/login/view/login.dart';
import 'package:final_year_project/pages/notfound/notfound.dart';
import 'package:final_year_project/pages/signup/binding/singup_binding.dart';
import 'package:final_year_project/pages/signup/view/signup.dart';
import 'package:final_year_project/pages/splashScreen/binding/splashScreen_binding.dart';
import 'package:final_year_project/pages/splashScreen/view/splashScreen.dart';
import 'package:get/get.dart';
import 'package:final_year_project/pages/home/view/home.dart';

class AppPages {
  static final initial = GetPage(
      name: '/splash',
      binding: SplashScreenBinding(),
      page: () => SplashScreen());

  static final List<GetPage> routes = [
    GetPage(
        name: '/splash',
        binding: SplashScreenBinding(),
        page: () => SplashScreen()),
    GetPage(name: "/intro", binding: IntroBindings(), page: () => IntroPage()),
    GetPage(name: "/login", binding: LoginBingdings(), page: () => LoginPage()),
    GetPage(name: "/signup", binding: SignupBindings(), page: () => SignupPage()),
    GetPage(
        name: "/home",
        page: () => HomePage(),
        middlewares: [RouterAuthMiddleware()]),
  ];

  static final notfound =
      GetPage(name: "/notfound", page: () => NotFoundPage());
}
