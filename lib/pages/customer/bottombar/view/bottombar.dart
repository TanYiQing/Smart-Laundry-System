import 'package:final_year_project/pages/customer/bottombar/branch/favourite/view/favourite.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/home/view/home.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/ongoingorder/view/ongoingorder.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/purchasehistory/view/purchasehistory.dart';
import 'package:final_year_project/pages/customer/bottombar/controller/bottombar_controller.dart';
import 'package:final_year_project/pages/customer/bottombar/branch/accountcustomer.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBar extends StatelessWidget {
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
                  icon: Icon(Icons.home),
                  label: "Home",
                  activeIcon: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Favorite',
                  activeIcon: Text("Favorite")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt_rounded),
                  label: 'On Going Order',
                  activeIcon: Text("On Going Order")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history_toggle_off_rounded),
                  label: 'Purchase History',
                  activeIcon: Text("Purchase History")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Account',
                  activeIcon: Text("Account")),
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed("/cart");
          },
          elevation: 10,
          backgroundColor: Color.fromRGBO(0, 194, 203, 1),
          child: Icon(Icons.shopping_cart_outlined),
        ),
      );
    });
  }
}
