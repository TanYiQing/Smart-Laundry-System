import 'package:final_year_project/middleware/router_auth.dart';
import 'package:final_year_project/pages/customer/account/view/account.dart';
import 'package:final_year_project/pages/customer/bottombar/binding/bottombar_binding.dart';
import 'package:final_year_project/pages/customer/bottombar/view/bottombar.dart';
import 'package:final_year_project/pages/customer/favourite/view/favourite.dart';
import 'package:final_year_project/pages/customer/home/view/home.dart';
import 'package:final_year_project/pages/customer/location/view/location.dart';
import 'package:final_year_project/pages/customer/notification/view/notification.dart';
import 'package:final_year_project/pages/customer/ongoingorder/view/ongoingorder.dart';
import 'package:final_year_project/pages/customer/purchasehistory/view/purchasehistory.dart';
import 'package:final_year_project/pages/customer/search/view/search.dart';
import 'package:final_year_project/pages/customer/services/view/services.dart';
import 'package:final_year_project/pages/customer/setting/view/language.dart';
import 'package:final_year_project/pages/customer/setting/view/setting.dart';
import 'package:final_year_project/pages/mutual/intro/binding/intro_binding.dart';
import 'package:final_year_project/pages/mutual/intro/view/intro.dart';
import 'package:final_year_project/pages/mutual/login/binding/login_binding.dart';
import 'package:final_year_project/pages/mutual/login/view/login.dart';
import 'package:final_year_project/pages/mutual/notfound/notfound.dart';
import 'package:final_year_project/pages/mutual/signup/binding/singup_binding.dart';
import 'package:final_year_project/pages/mutual/signup/view/signup.dart';
import 'package:final_year_project/pages/mutual/splashScreen/binding/splashScreen_binding.dart';
import 'package:final_year_project/pages/mutual/splashScreen/view/splashScreen.dart';
import 'package:get/get.dart';

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
    GetPage(
        name: '/bottombar',
        binding: BottomBarBindings(),
        page: () => BottomBar()),
    GetPage(name: "/login", binding: LoginBingdings(), page: () => LoginPage()),
    GetPage(
        name: "/signup", binding: SignupBindings(), page: () => SignupPage()),
    GetPage(
        name: "/home",
        page: () => HomePage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/favourite",
        page: () => FavouritePage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/ongoingorder",
        page: () => OnGoingOrderPage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/purchasehistory",
        page: () => PurchaseHistoryPage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/search",
        page: () => SearchPage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/location",
        page: () => LocationPage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/notification",
        page: () => NotificationPage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/setting",
        page: () => SettingPage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/services",
        page: () => ServicesPage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/account",
        page: () => AccountPage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/language",
        page: () => LanguagePage(),
        middlewares: [RouterAuthMiddleware()]),
  ];

  static final notfound =
      GetPage(name: "/notfound", page: () => NotFoundPage());
}
