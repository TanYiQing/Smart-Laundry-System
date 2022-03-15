// ignore_for_file: non_constant_identifier_names

import 'package:final_year_project/models/availability.dart';
import 'package:final_year_project/models/laundry.dart';
import 'package:final_year_project/models/machine.dart';
import 'package:final_year_project/models/user.dart';
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
      print(response.body);
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
    print(response.body);
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
        print(user.lname);
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
      print(response.body);
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
      print(response.body);
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
    print(machineType);
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

  static Future<List<Laundry>?> loadService(String machineType) async {
    var response = await client.post(
        Uri.parse(
            'https://hubbuddies.com/270607/onesource/php/loadService.php'),
        body: {"machineType": machineType});

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
      print(response.body);
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
    print(response.body);
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
}
