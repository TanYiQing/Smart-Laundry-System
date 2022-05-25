// ignore_for_file: non_constant_identifier_names

import 'package:final_year_project/models/address.dart';
import 'package:final_year_project/models/availability.dart';
import 'package:final_year_project/models/customerReport.dart';
import 'package:final_year_project/models/errorMachine.dart';
import 'package:final_year_project/models/laundry.dart';
import 'package:final_year_project/models/machine.dart';
import 'package:final_year_project/models/order.dart';
import 'package:final_year_project/models/user.dart';
import 'package:final_year_project/models/wallet.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static final appData = GetStorage();
  static var client = http.Client();

  static Future<String?> signUpUser(
      String firstname, lastname, email, password, role) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/registerUser.php'),
        body: {
          "firstName": firstname,
          "lastName": lastname,
          "email": email,
          "password": password,
          "role": role
        });
    if (response.statusCode == 200) {
      if (response.body == "Success") {
        Get.snackbar("Hooray!", "Account registered successfully, login now.");
      } else {
        Get.snackbar("Sign Up Failed", "Please try again...");
        Get.offAllNamed('/intro');
      }
    } else {
      return null;
    }
  }

  static Future<User?> loginUser(String email, password, role) async {
    var response = await client.post(
        Uri.parse('https://hubbuddies.com/270607/onesource/php/loginUser.php'),
        body: {"role": role, "email": email, "password": password});
    if (response.statusCode == 200) {
      if (response.body == "Failed") {
        Get.snackbar("Opps", "Wrong username or password...");
        Get.toNamed('/login');
        return null;
      } else {
        Get.snackbar("Hooray!", "Successfully login into your account.");

        List userdata = response.body.split('#');
        User user = new User(
          fname: userdata[1],
          lname: userdata[2],
          email: userdata[3],
          dateregister: userdata[4],
        );
        if (role == "Customer") {
          Get.offAllNamed('/bottombar', arguments: user);
        } else {
          Get.offAllNamed('/homelaundry', arguments: user);
        }
      }
    } else {
      Get.snackbar("Opps", "Wrong username or password...");
      return null;
    }
  }

  static Future<Laundry?> addLaundry(
      String laundryOwnerName,
      laundryOwnerContact,
      laundryName,
      laundryAddress1,
      laundryAddress2,
      laundryZIP,
      laundryCity,
      laundryState,
      email,
      String? encoded_laundryshopimage,
      String? encoded_ssmimage,
      String? encoded_businesslicenseimage,
      String? encoded_bankheaderimage) async {
    var response = await client.post(
        Uri.parse('https://hubbuddies.com/270607/onesource/php/addLaundry.php'),
        body: {
          "laundryOwnerName": laundryOwnerName,
          "laundryOwnerContact": laundryOwnerContact,
          "laundryName": laundryName,
          "laundryAddress1": laundryAddress1,
          "laundryAddress2": laundryAddress2,
          "laundryZIP": laundryZIP,
          "laundryCity": laundryCity,
          "laundryState": laundryState,
          "email": email,
          "encoded_laundryshopimage": encoded_laundryshopimage,
          "encoded_ssmimage": encoded_ssmimage,
          "encoded_businesslicenseimage": encoded_businesslicenseimage,
          "encoded_bankheaderimage": encoded_bankheaderimage
        });
    if (response.statusCode == 200) {
      if (response.body == "Success") {
        Get.snackbar(
            "Hooray!", "Laundry has been submited, please wait for approval.");
        Get.toNamed("/mylaundrylaundry");
      } else {
        Get.snackbar("Failed to add laundry",
            "Please check for laundry details and try again.");
      }
    } else {
      return null;
    }
  }

  static Future<List<Laundry>?> loadLaundry(String email) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/loadLaundry.php'),
        body: {"email": email});

    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        var jsondata = response.body;
        return laundryFromJson(jsondata);
      }
    } else {
      Get.snackbar("Opps", "Error in loading laundry...");
      return null;
    }
  }

  static Future<List<Laundry>?> addMachine(
      String machineType,
      String calculationBase,
      String minimumWeight,
      String maximumWeight,
      String price,
      String duration,
      String laundryID,
      String addOn1,
      String addOn1Price,
      String addOn2,
      String addOn2Price,
      String addOn3,
      String addOn3Price) async {
    var response = await client.post(
        Uri.parse('https://hubbuddies.com/270607/onesource/php/addMachine.php'),
        body: {
          "machineType": machineType,
          "calculationBase": calculationBase,
          "minimumWeight": minimumWeight,
          "maximumWeight": maximumWeight,
          "price": price,
          "duration": duration,
          "laundryID": laundryID,
          "addOn1": addOn1,
          "addOn1Price": addOn1Price,
          "addOn2": addOn2,
          "addOn2Price": addOn2Price,
          "addOn3": addOn3,
          "addOn3Price": addOn3Price
        });

    if (response.statusCode == 200) {
      if (response.body == "Success") {
        Get.snackbar("Hooray!", "Machine has been submited.");
        Get.offAndToNamed("/addmachinelaundry");
      } else {
        Get.snackbar("Failed to add machine",
            "Please check for machine details and try again.");
      }
    } else {
      return null;
    }
  }

  static Future<List<Machine>?> loadMachine(
      String laundryID, String machineType) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/loadMachine.php'),
        body: {"laundryID": laundryID, "machineType": machineType});

    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        var jsondata = response.body;
        return machineFromJson(jsondata);
      }
    } else {
      Get.snackbar("Opps", "Error in loading machine...");
      return null;
    }
  }

  static Future<List<Laundry>?> loadService(String machineType, email) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/loadService.php'),
        body: {"machineType": machineType, "email": email});
    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        var jsondata = response.body;
        return laundryFromJson(jsondata);
      }
    } else {
      Get.snackbar("Opps", "Error in loading service...");
      return null;
    }
  }

  static Future<List<Availability>?> calculateAvailability(
    String laundryID,
  ) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/calculateAvailability.php'),
        body: {
          "laundryID": laundryID,
        });

    if (response.statusCode == 200) {
      var jsondata = response.body;
      return availabilityFromJson(jsondata);
    } else {
      return null;
    }
  }

  static Future<String?> calculateApproval(
    String email,
  ) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/calculateApprovedLaundry.php'),
        body: {
          "email": email,
        });
    if (response.statusCode == 200) {
      if (response.body == "Failed") {
        return null;
      } else {
        return response.body.toString();
      }
    } else {
      return null;
    }
  }

  static Future<String?> addAddress(
      String name,
      String contact,
      String address1,
      String address2,
      String zip,
      String city,
      String state,
      String addressType,
      email) async {
    var response = await client.post(
        Uri.parse('https://hubbuddies.com/270607/onesource/php/addAddress.php'),
        body: {
          "name": name,
          "contact": contact,
          "address1": address1,
          "address2": address2,
          "zip": zip,
          "city": city,
          "state": state,
          "addressType": addressType,
          "email": email
        });
    if (response.statusCode == 200) {
      if (response.body == "Failed") {
        return null;
      } else {
        Get.snackbar("Hooray!", "Address has been saved.");
        Get.offAndToNamed("/location");
      }
    } else {
      return null;
    }
  }

  static Future<List<Address>?> loadAddress(String email) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/loadAddress.php'),
        body: {"email": email});
    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        var jsondata = response.body;
        return addressFromJson(jsondata);
      }
    } else {
      Get.snackbar("Opps", "Error in loading service...");
      return null;
    }
  }

  static Future<String?> deleteAddress(String addressID) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/deleteAddress.php'),
        body: {
          "addressID": addressID,
        });
    if (response.statusCode == 200) {
      if (response.body == "Failed") {
        return null;
      } else {
        Get.snackbar("Address Removed", "Address has been removed.");
        Get.offAndToNamed("/location");
      }
    } else {
      return null;
    }
  }

  static Future addFavourite(String laundryID, email) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/addFavourite.php'),
        body: {"laundryID": laundryID, "email": email});
  }

  static Future deleteFavourite(String laundryID, email) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/deleteFavourite.php'),
        body: {"laundryID": laundryID, "email": email});
  }

  static Future<List<Laundry>?> loadFavourite(String email) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/loadFavourite.php'),
        body: {"email": email});
    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        var jsondata = response.body;
        return laundryFromJson(jsondata);
      }
    } else {
      Get.snackbar("Opps", "Error in loading service...");
      return null;
    }
  }

  static Future<String?> makePaymentCOD(
      String email,
      name,
      phone,
      orderMethod,
      addressID,
      collectTime,
      note,
      laundryID,
      machineID,
      machineType,
      price,
      addon1,
      addon2,
      addon3,
      totalPrice,
      date) async {
    var response = await client.post(
        Uri.parse('https://hubbuddies.com/270607/onesource/php/paymentCOD.php'),
        body: {
          "email": email,
          "name": name,
          "phone": phone,
          "orderMethod": orderMethod,
          "addressID": addressID,
          "collectTime": collectTime,
          "note": note,
          "laundryID": laundryID,
          "machineID": machineID,
          "machineType": machineType,
          "price": price,
          "addon1": addon1,
          "addon2": addon2,
          "addon3": addon3,
          "totalPrice": totalPrice,
          "date": date,
        });
    print(response.body);
    if (response.statusCode == 200) {
      if (response.body == "Success") {
        Get.snackbar("Hooray!", "Order placed!");
      } else {
        Get.snackbar(
            "Opps", "Something wrong in placing order, please try again...");
      }
    } else {
      return null;
    }
  }

  static Future<User?> proceedtoHomePage(String email, password, role) async {
    var response = await client.post(
        Uri.parse('https://hubbuddies.com/270607/onesource/php/loginUser.php'),
        body: {"role": role, "email": email, "password": password});
    if (response.statusCode == 200) {
      if (response.body == "Failed") {
        return null;
      } else {
        List userdata = response.body.split('#');
        User user = new User(
          fname: userdata[1],
          lname: userdata[2],
          email: userdata[3],
          dateregister: userdata[4],
        );
        if (role == "Customer") {
          Get.offAllNamed('/bottombar', arguments: user);
        } else {
          Get.offAllNamed('/homelaundry', arguments: user);
        }
      }
    } else {
      Get.snackbar("Opps", "Something went wrong...");
      return null;
    }
  }

  static Future<List<Order>?> loadOnGoingOrder(String email) async {
    try {
      var response = await client.post(
          Uri.parse(
              'https://hubbuddies.com/270607/onesource/php/loadOnGoingOrder.php'),
          body: {"email": email});
      if (response.statusCode == 200) {
        if (response.body == "nodata") {
          return null;
        } else {
          var jsondata = response.body;
          return orderFromJson(jsondata);
        }
      } else {
        Get.snackbar("Opps", "Error in loading service...");
        return null;
      }
    } on Exception catch (_) {}
  }

  static Future<List<Order>?> loadNewAndConfirmedOrder() async {
    var response = await client.post(
      Uri.parse(
          'https://hubbuddies.com/270607/onesource/php/loadNewAndConfirmedOrder.php'),
    );

    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        var jsondata = response.body;
        return orderFromJson(jsondata);
      }
    } else {
      Get.snackbar("Opps", "Error in loading service...");
      return null;
    }
  }

  static Future<List<Order>?> loadCompletedOrderCustomer(String email) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/loadCompletedOrderCustomer.php'),
        body: {"email": email});
    print(response.body);
    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        var jsondata = response.body;
        return orderFromJson(jsondata);
      }
    } else {
      Get.snackbar("Opps", "Error in loading service...");
      return null;
    }
  }

  static Future<List<Order>?> loadOnGoingOrderLaundry() async {
    var response = await client.post(
      Uri.parse(
          'https://hubbuddies.com/270607/onesource/php/loadOnGoingOrderLaundry.php'),
    );
    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        var jsondata = response.body;
        return orderFromJson(jsondata);
      }
    } else {
      Get.snackbar("Opps", "Error in loading service...");
      return null;
    }
  }

  static Future<List<Order>?> loadCompletedOrderLaundry() async {
    var response = await client.post(
      Uri.parse(
          'https://hubbuddies.com/270607/onesource/php/loadCompletedOrder.php'),
    );
    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        var jsondata = response.body;
        return orderFromJson(jsondata);
      }
    } else {
      Get.snackbar("Opps", "Error in loading service...");
      return null;
    }
  }

  static Future<List<Order>?> loadProcessingOrderLaundryOwner() async {
    var response = await client.post(
      Uri.parse(
          'https://hubbuddies.com/270607/onesource/php/loadConfirmedOrder.php'),
    );
    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        var jsondata = response.body;
        return orderFromJson(jsondata);
      }
    } else {
      Get.snackbar("Opps", "Error in loading service...");
      return null;
    }
  }

  static Future<String?> updateOrderStatus(
      String orderId, String status) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/updateOrderStatus.php'),
        body: {"orderId": orderId, "status": status});
    if (response.statusCode == 200) {
      if (response.body == "Success") {
        Get.snackbar("Hooray!", "Order status updated!");
      } else {
        Get.snackbar("Opps",
            "Something wrong in updating order status, please try again...");
      }
    } else {
      return null;
    }
  }

  static Future<List<Wallet>?> loadWallet(String email) async {
    var response = await client.post(
        Uri.parse('https://hubbuddies.com/270607/onesource/php/loadWallet.php'),
        body: {"email": email});
    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        var jsondata = response.body;
        return walletFromJson(jsondata);
      }
    } else {
      Get.snackbar("Opps", "Error in loading wallet...");
      return null;
    }
  }

  static Future<String?> calculateWallet(String email) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/calculateWallet.php'),
        body: {"email": email});
    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        return response.body;
      }
    } else {
      Get.snackbar("Opps", "Error in loading wallet...");
      return null;
    }
  }

  static Future<String?> sendReport(
      String name,
      String email,
      String phone,
      String laundryID,
      String machineID,
      String machineType,
      String error) async {
    var response = await client.post(
        Uri.parse('https://hubbuddies.com/270607/onesource/php/sendReport.php'),
        body: {
          "name": name,
          "email": email,
          "phone": phone,
          "laundryID": laundryID,
          "machineID": machineID,
          "machineType": machineType,
          "error": error
        });
    if (response.statusCode == 200) {
      if (response.body == "Success") {
        Get.back();
        Get.snackbar("Error Reported", "We will reach you ASAP.");
      } else {
        Get.snackbar("Error Report Failed", "Please try again later...");
      }
    } else {
      Get.snackbar("Error Report Failed", "Please try again later...");
      return null;
    }
  }

  static Future<List<ErrorMachine>?> loadError(String laundryID) async {
    var response = await client.post(
        Uri.parse('https://hubbuddies.com/270607/onesource/php/loadError.php'),
        body: {"laundryID": laundryID});
    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        var jsondata = response.body;
        return errorMachineFromJson(jsondata);
      }
    } else {
      Get.snackbar("Opps", "Error in loading error machines...");
      return null;
    }
  }

  static Future<String?> resolvedError(String errorID) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/resolvedError.php'),
        body: {
          "errorID": errorID,
        });
    if (response.statusCode == 200) {
      if (response.body == "Failed") {
        return null;
      } else {
        Get.back();
        Get.back();
        Get.snackbar("Error Resolved", "Error has been resolved.");
      }
    } else {
      return null;
    }
  }

  static Future<String?> calculateNumberError(String email) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/calculateNumberError.php'),
        body: {"email": email});

    if (response.statusCode == 200) {
      if (response.body == "nodata") {
        return null;
      } else {
        return response.body;
      }
    } else {
      Get.snackbar("Opps", "Error in calculating error...");
      return null;
    }
  }

  static Future<List<Order>?> generateIncomeReport(
      String datestart, String dateend, laundryID) async {
    try {
      var response = await client.post(
          Uri.parse(
              'https://hubbuddies.com/270607/onesource/php/generateIncomeReport.php'),
          body: {
            "datestart": datestart,
            "dateend": dateend,
            "laundryID": laundryID
          });

      if (response.statusCode == 200) {
        if (response.body == "nodata") {
          return null;
        } else {
          var jsondata = response.body;
          return orderFromJson(jsondata);
        }
      } else {
        Get.snackbar("Opps", "Error in loading report...");
        return null;
      }
    } on Exception catch (_) {}
  }

  static Future<List<ErrorMachine>?> generateErrorReport(
      String datestart, String dateend, laundryID) async {
    print(datestart);
    try {
      var response = await client.post(
          Uri.parse(
              'https://hubbuddies.com/270607/onesource/php/generateErrorReport.php'),
          body: {
            "datestart": datestart,
            "dateend": dateend,
            "laundryID": laundryID
          });
      print(response.body);
      if (response.statusCode == 200) {
        if (response.body == "nodata") {
          return null;
        } else {
          var jsondata = response.body;
          return errorMachineFromJson(jsondata);
        }
      } else {
        Get.snackbar("Opps", "Error in loading report...");
        return null;
      }
    } on Exception catch (_) {}
  }

  static Future<List<CustomerReport>?> generateCustomerReport(
      String datestart, String dateend, laundryID) async {
    print(datestart);
    try {
      var response = await client.post(
          Uri.parse(
              'https://hubbuddies.com/270607/onesource/php/generateCustomerReport.php'),
          body: {
            "datestart": datestart,
            "dateend": dateend,
            "laundryID": laundryID
          });
      print(response.body);
      if (response.statusCode == 200) {
        if (response.body == "nodata") {
          return null;
        } else {
          var jsondata = response.body;
          return customerReportFromJson(jsondata);
        }
      } else {
        Get.snackbar("Opps", "Error in loading report...");
        return null;
      }
    } on Exception catch (_) {}
  }

  static Future<String?> countClick(String date, String? laundryID) async {
    var response = await client.post(
        Uri.parse('https://hubbuddies.com/270607/onesource/php/countClick.php'),
        body: {"date": date, "laundryID": laundryID});
    print(response.body);
    if (response.statusCode == 200) {
      if (response.body == "Failed") {
        return null;
      } else {
        return response.body;
      }
    } else {
      return null;
    }
  }
}
