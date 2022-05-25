import 'package:final_year_project/middleware/router_auth.dart';
import 'package:final_year_project/pages/customer/addlocation/binding/addlocation_binding.dart';
import 'package:final_year_project/pages/customer/addlocation/view/addlocation.dart';
import 'package:final_year_project/pages/customer/bottombar/binding/bottombar_binding.dart';
import 'package:final_year_project/pages/customer/cart/view/cart.dart';
import 'package:final_year_project/pages/customer/chooselocation/binding/chooselocation_binding.dart';
import 'package:final_year_project/pages/customer/chooselocation/view/chooselocation.dart';
import 'package:final_year_project/pages/customer/errorreport/binding/errorreport_binding.dart';
import 'package:final_year_project/pages/customer/errorreport/view/errorreport.dart';
import 'package:final_year_project/pages/customer/location/binding/location_binding.dart';
import 'package:final_year_project/pages/customer/map/binding/map_binding.dart';
import 'package:final_year_project/pages/customer/map/view/map.dart';
import 'package:final_year_project/pages/customer/payment/binding/payment_binding.dart';
import 'package:final_year_project/pages/customer/payment/view/payment.dart';
import 'package:final_year_project/pages/customer/services/binding/services_binding.dart';
import 'package:final_year_project/pages/customer/services/view/drywash.dart';
import 'package:final_year_project/pages/customer/services/view/drywashandironing.dart';
import 'package:final_year_project/pages/customer/services/view/ironing.dart';
import 'package:final_year_project/pages/customer/services/view/normalwash.dart';
import 'package:final_year_project/pages/customer/services/view/normalwashandironing.dart';
import 'package:final_year_project/pages/customer/servicesdetails/binding/servicesdetails_binding.dart';
import 'package:final_year_project/pages/customer/servicesdetails/view/servicesdashboard.dart';
import 'package:final_year_project/pages/customer/servicesdetails/view/servicesdetails.dart';
import 'package:final_year_project/pages/customer/servicesdetails/view/viewallservicesdetails.dart';
import 'package:final_year_project/pages/customer/servicesmachinedetails/binding/servicesmachinedetails_binding.dart';
import 'package:final_year_project/pages/customer/servicesmachinedetails/view/servicesmachinedetails.dart';
import 'package:final_year_project/pages/customer/trackorder/binding/trackorder_binding.dart';
import 'package:final_year_project/pages/customer/trackorder/view/trackorder.dart';
import 'package:final_year_project/pages/laundryOwner/addmachine/binding/addmachine_binding.dart';
import 'package:final_year_project/pages/laundryOwner/addmachine/view/addmachine.dart';
import 'package:final_year_project/pages/laundryOwner/addnewlaundry/binding/addnewlaundry_binding.dart';
import 'package:final_year_project/pages/laundryOwner/addmachine/view/adddrywashingmachine.dart';
import 'package:final_year_project/pages/laundryOwner/addmachine/view/addironingmachine.dart';
import 'package:final_year_project/pages/laundryOwner/addnewlaundry/view/addnewlaundry.dart';
import 'package:final_year_project/pages/laundryOwner/addmachine/view/addwashingmachine.dart';
import 'package:final_year_project/pages/laundryOwner/businessreport/binding/businessreport_binding.dart';
import 'package:final_year_project/pages/laundryOwner/businessreport/view/businessreport.dart';
import 'package:final_year_project/pages/laundryOwner/businessreport/view/businessreportcategory.dart';
import 'package:final_year_project/pages/laundryOwner/businessreport/view/report.dart';
import 'package:final_year_project/pages/laundryOwner/errorMachines/errorMachines_binding/errorMachines_bindings.dart';
import 'package:final_year_project/pages/laundryOwner/errorMachines/view/errorMachines.dart';
import 'package:final_year_project/pages/laundryOwner/errorMachines/view/errorMachinesDetails.dart';
import 'package:final_year_project/pages/laundryOwner/managemachine/binding/managemachine_binding.dart';
import 'package:final_year_project/pages/laundryOwner/managemachine/view/managemachine.dart';
import 'package:final_year_project/pages/laundryOwner/mylaundry/binding/mylaundry_binding.dart';
import 'package:final_year_project/pages/laundryOwner/mylaundrydetails/binding/mylaundrydetails_binding.dart';
import 'package:final_year_project/pages/laundryOwner/mylaundrydetails/view/mylaundrydetails.dart';
import 'package:final_year_project/pages/laundryOwner/mywallet/binding/mywallet_binding.dart';
import 'package:final_year_project/pages/mutual/account/binding/account_binding.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/accountcustomer.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/favourite/view/favourite.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/home/view/home.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/ongoingorder/view/ongoingorder.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/purchasehistory/view/purchasehistory.dart';
import 'package:final_year_project/pages/customer/bottombar/view/bottombar.dart';
import 'package:final_year_project/pages/customer/location/view/location.dart';
import 'package:final_year_project/pages/customer/notification/view/notification.dart';
import 'package:final_year_project/pages/customer/search/view/search.dart';
import 'package:final_year_project/pages/customer/services/view/services.dart';
import 'package:final_year_project/pages/laundryOwner/home/binding/home_binding.dart';
import 'package:final_year_project/pages/laundryOwner/home/view/home.dart';
import 'package:final_year_project/pages/laundryOwner/mylaundry/view/mylaundry.dart';
import 'package:final_year_project/pages/laundryOwner/myorder/binding/myorder_binding.dart';
import 'package:final_year_project/pages/laundryOwner/myorder/view/completedorder.dart';
import 'package:final_year_project/pages/laundryOwner/myorder/view/neworder.dart';
import 'package:final_year_project/pages/laundryOwner/myorder/view/ongoingorder.dart';
import 'package:final_year_project/pages/laundryOwner/mywallet/view/mywallet.dart';
import 'package:final_year_project/pages/mutual/account/view/accountlaundry.dart';
import 'package:final_year_project/pages/mutual/account/view/birthday.dart';
import 'package:final_year_project/pages/mutual/account/view/changepassword.dart';
import 'package:final_year_project/pages/mutual/account/view/firstname.dart';
import 'package:final_year_project/pages/mutual/account/view/gender.dart';
import 'package:final_year_project/pages/mutual/account/view/lastname.dart';
import 'package:final_year_project/pages/mutual/intro/binding/intro_binding.dart';
import 'package:final_year_project/pages/mutual/intro/view/intro.dart';
import 'package:final_year_project/pages/mutual/login/binding/login_binding.dart';
import 'package:final_year_project/pages/mutual/login/view/login.dart';
import 'package:final_year_project/pages/mutual/notfound/notfound.dart';
import 'package:final_year_project/pages/mutual/setting/binding/setting_binding.dart';
import 'package:final_year_project/pages/mutual/setting/view/aboutus.dart';
import 'package:final_year_project/pages/mutual/setting/view/language.dart';
import 'package:final_year_project/pages/mutual/setting/view/setting.dart';
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
    //Mutual Page
    GetPage(
        name: '/splash',
        binding: SplashScreenBinding(),
        page: () => SplashScreen()),
    GetPage(name: "/intro", binding: IntroBindings(), page: () => IntroPage()),
    GetPage(name: "/login", binding: LoginBingdings(), page: () => LoginPage()),
    GetPage(
        name: "/signup", binding: SignupBindings(), page: () => SignupPage()),
    GetPage(
        name: "/setting",
        page: () => SettingPage(),
        binding: SettingBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/language",
        page: () => LanguagePage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/aboutus",
        page: () => AboutUsPage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/firstname",
        page: () => FirstNamePage(),
        binding: AccountBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/lastname",
        page: () => LastNamePage(),
        binding: AccountBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/password",
        page: () => ChangePasswordPage(),
        binding: AccountBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/gender",
        page: () => GenderPage(),
        binding: AccountBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/birthday",
        page: () => BirthdayPage(),
        binding: AccountBindings(),
        middlewares: [RouterAuthMiddleware()]),

    //Customer Page
    GetPage(
        name: '/bottombar',
        binding: BottomBarBindings(),
        page: () => BottomBar()),
    GetPage(
        name: "/home",
        page: () => HomePage(),
        binding: BottomBarBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/favourite",
        page: () => FavouritePage(),
        binding: BottomBarBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/ongoingorder",
        page: () => OnGoingOrderPage(),
        binding: BottomBarBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/purchasehistory",
        binding: BottomBarBindings(),
        page: () => PurchaseHistoryPage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/account",
        page: () => AccountPageCustomer(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/search",
        page: () => SearchPage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/location",
        page: () => LocationPage(),
        binding: LocationBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/addnewlocation",
        page: () => AddLocationPage(),
        binding: AddLocationBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/map",
        page: () => MapPage(),
        binding: MapBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/notification",
        page: () => NotificationPage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/services",
        page: () => ServicesPage(),
        binding: ServicesBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/normalwash",
        page: () => NormalWashPage(),
        binding: ServicesBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/normalwashandironing",
        page: () => NormalWashandIroningPage(),
        binding: ServicesBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/drywash",
        page: () => DryWashPage(),
        binding: ServicesBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/drywashandironing",
        page: () => DryWashandIroningPage(),
        binding: ServicesBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/ironing",
        page: () => IroningPage(),
        binding: ServicesBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/servicesdetails",
        page: () => ServicesDetailsPage(),
        binding: ServicesDetailsBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/servicesdashboard",
        page: () => ServicesDashboardPage(),
        binding: ServicesDetailsBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/servicesmachinedetails",
        page: () => ServicesMachineDetailsPage(),
        binding: ServicesMachineDetailsBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/cart",
        page: () => CartPage(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/chooselocation",
        page: () => ChooseLocationPage(),
        binding: ChooseLocationBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/viewallservicesdetails",
        page: () => ViewAllServicesDetailsPage(),
        binding: ServicesDetailsBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/payment",
        page: () => PaymentPage(),
        binding: PaymentBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/error",
        page: () => ErrorReportPage(),
        binding: ErrorReportBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/track",
        page: () => TrackOrderPage(),
        binding: TrackOrderBindings(),
        middlewares: [RouterAuthMiddleware()]),

    //Laundry Owner Page
    GetPage(
        name: "/homelaundry",
        binding: HomeLaundryBindings(),
        page: () => HomePageLaundry(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/accountlaundry",
        page: () => AccountPageLaundry(),
        binding: AccountBindings(),
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
    GetPage(
        name: "/addnewlaundrylaundry",
        page: () => AddNewLaundryPageLaundry(),
        binding: AddNewLaundryBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/businessreportlaundry",
        page: () => BusinessReportPageLaundry(),
        binding: BusinessReportBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/businessreportcategorylaundry",
        page: () => BusinessReportCategory(),
        binding: BusinessReportBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/errormachines",
        page: () => ErrorMachinesPageLaundry(),
        binding: ErrorMachinesBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/errormachinesdetails",
        page: () => ErrorMachinesDetailsPageLaundry(),
        binding: ErrorMachinesBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/mylaundrylaundry",
        page: () => MyLaundryPageLaundry(),
        binding: MyLaundryBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/mylaundrydetailslaundry",
        page: () => MyLaundryDetailsPageLaundry(),
        binding: MyLaundryDetailsBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/managemachinelaundry",
        page: () => ManageMachinePageLaundry(),
        binding: ManageMachineBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/addmachinelaundry",
        page: () => AddMachinePageLaundry(),
        binding: AddMachineBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/addwashingmachinelaundry",
        page: () => AddWashingMachinePageLaundry(),
        binding: AddMachineBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/adddrywashingmachinelaundry",
        page: () => AddDryWashingMachinePageLaundry(),
        binding: AddMachineBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/addironingmachinelaundry",
        page: () => AddIroningMachinePageLaundry(),
        binding: AddMachineBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/mywalletlaundry",
        page: () => MyWalletPageLaundry(),
        binding: MyWalletBindings(),
        middlewares: [RouterAuthMiddleware()]),
    GetPage(
        name: "/report",
        page: () => ReportPage(),
        binding: BusinessReportBindings(),
        middlewares: [RouterAuthMiddleware()]),
  ];

  static final notfound =
      GetPage(name: "/notfound", page: () => NotFoundPage());
}
