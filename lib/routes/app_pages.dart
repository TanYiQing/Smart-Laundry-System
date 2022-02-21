import 'package:final_year_project/middleware/router_auth.dart';

import 'package:final_year_project/pages/customer/bottombar/binding/bottombar_binding.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/account/view/account.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/favourite/view/favourite.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/home/view/home.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/ongoingorder/view/ongoingorder.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/purchasehistory/view/purchasehistory.dart';
import 'package:final_year_project/pages/customer/bottombar/view/bottombar.dart';

import 'package:final_year_project/pages/customer/location/view/location.dart';
import 'package:final_year_project/pages/customer/notification/view/notification.dart';

import 'package:final_year_project/pages/customer/search/view/search.dart';
import 'package:final_year_project/pages/customer/services/view/services.dart';
import 'package:final_year_project/pages/customer/setting/binding/setting_binding.dart';
import 'package:final_year_project/pages/customer/setting/view/aboutus.dart';
import 'package:final_year_project/pages/customer/setting/view/language.dart';
import 'package:final_year_project/pages/customer/setting/view/setting.dart';
import 'package:final_year_project/pages/laundryOwner/account/binding/account_binding.dart';
import 'package:final_year_project/pages/laundryOwner/account/view/account.dart';
import 'package:final_year_project/pages/laundryOwner/addnewlaundry/view/addnewlaundry.dart';
import 'package:final_year_project/pages/laundryOwner/businessreport/view/businessreport.dart';
import 'package:final_year_project/pages/laundryOwner/home/binding/home_binding.dart';
import 'package:final_year_project/pages/laundryOwner/home/view/home.dart';
import 'package:final_year_project/pages/laundryOwner/mybusiness/view/mybusiness.dart';
import 'package:final_year_project/pages/laundryOwner/mylaundry/view/mylaundry.dart';
import 'package:final_year_project/pages/laundryOwner/myorder/binding/myorder_binding.dart';
import 'package:final_year_project/pages/laundryOwner/myorder/view/completedorder.dart';
import 'package:final_year_project/pages/laundryOwner/myorder/view/neworder.dart';
import 'package:final_year_project/pages/laundryOwner/myorder/view/ongoingorder.dart';
import 'package:final_year_project/pages/laundryOwner/mywallet/view/mywallet.dart';
import 'package:final_year_project/pages/laundryOwner/setting/binding/setting_binding.dart';
import 'package:final_year_project/pages/laundryOwner/setting/view/setting.dart';
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
    //Customer Page
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
        binding: SettingBindings(),
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
    GetPage(
        name: "/aboutus",
        page: () => AboutUsPage(),
        middlewares: [RouterAuthMiddleware()]),

    //Laundry Owner Page
    GetPage(
        name: "/homelaundry",
        binding: HomeLaundryBindings(),
        page: () => HomePageLaundry(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/settinglaundry",
        page: () => SettingPageLaundry(),
        binding: SettingLaundryBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/accountlaundry",
        page: () => AccountPageLaundry(),
        binding: AccountLaundryBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/neworderlaundry",
        page: () => NewOrderPageLaundry(),
        binding: MyOrderLaundryBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/ongoingorderlaundry",
        page: () => OnGoingOrderPageLaundry(),
        binding: MyOrderLaundryBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/completedorderlaundry",
        page: () => CompleteOrderPageLaundry(),
        binding: MyOrderLaundryBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(name: "/addnewlaundrylaundry", page: () => AddNewLaundryPageLaundry(),
        // binding: MyOrderLaundryBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/businessreportlaundry", page: () => BusinessReportPageLaundry(),
        // binding: MyOrderLaundryBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(name: "/mybusinesslaundry", page: () => MyBusinessPageLaundry(),
        // binding: MyOrderLaundryBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(name: "/mylaundrylaundry", page: () => MyLaundryPageLaundry(),
        // binding: MyOrderLaundryBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(name: "/mywalletlaundry", page: () => MyWalletPageLaundry(),
        // binding: MyOrderLaundryBindings(),
        middlewares: [RouterAuthMiddleware()]),
  ];

  static final notfound =
      GetPage(name: "/notfound", page: () => NotFoundPage());
}
