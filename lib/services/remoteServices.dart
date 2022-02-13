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
        Get.snackbar("Hooray!", "Account registered successfully! Login Now!");
      } else {}
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
        Get.offAllNamed('/bottombar');

        // List userdata = response.body.split('#');
        // User user = new User(
        //   fname: userdata[1],
        //   lname: userdata[2],
        //   email: userdata[3],
        //   dateregister: userdata[4],
        // );
        // return user;
      }
    } else {
      Get.snackbar("Opps", "Wrong username or password...");
      return null;
    }
  }
}
