import 'package:final_year_project/pages/customer/bottombar/branch/favourite/view/favourite.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/home/view/home.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/ongoingorder/view/ongoingorder.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/purchasehistory/view/purchasehistory.dart';
import 'package:final_year_project/pages/customer/bottombar/controller/bottombar_controller.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/accountcustomer.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBar extends StatelessWidget {
  final controller = Get.put<BottomBarController>(BottomBarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
            child: IndexedStack(
          index: controller.tabIndex,
          children: [
            HomePage(),
            FavouritePage(),
            OnGoingOrderPage(),
            PurchaseHistoryPage(),
            AccountPageCustomer()
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Color.fromRGBO(0, 194, 203, 1),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: controller.changeTab,
            currentIndex: controller.tabIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Home".tr,
                  activeIcon: Text("Home".tr)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border_outlined),
                  label: 'Favourite'.tr,
                  activeIcon: Text("Favourite".tr)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt_rounded),
                  label: 'On Going Order'.tr,
                  activeIcon: Text("On Going Order".tr)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history_toggle_off_rounded),
                  label: 'Order History'.tr,
                  activeIcon: Text("Order History".tr)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_rounded),
                  label: 'Account'.tr,
                  activeIcon: Text("Account".tr)),
            ]),
      );
    });
  }
}
