import 'dart:async';
import 'dart:math';

import 'package:final_year_project/models/gmapLocation.dart';
import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddLocationController extends GetxController {
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController contactcontroller = new TextEditingController();
  TextEditingController address1controller = new TextEditingController();
  TextEditingController address2controller = new TextEditingController();
  TextEditingController zipcontroller = new TextEditingController();
  TextEditingController citycontroller = new TextEditingController();
  TextEditingController statecontroller = new TextEditingController();
  var addressType = "".obs;

  Completer<GoogleMapController> completercontroller = Completer();
  CameraPosition shopPosition = CameraPosition(
    target: LatLng(5.363793, 100.459687),
    zoom: 17,
  );
  Set<Marker> markers = Set();
  String address = "No location selected";
  late GMapLocation gmaplocation;
  double dis = 0;

  void handleRadioButton(var type) {
    addressType.value = type;
    update();
  }

  getUserCurrentLoc() async {
    await _determinePosition().then((value) => {_getPlace(value)});
  }

  void _getPlace(Position pos) async {
    List<Placemark> newPlace =
        await placemarkFromCoordinates(pos.latitude, pos.longitude);

    // this is all you need
    Placemark placeMark = newPlace[0];
    String locationNumber = placeMark.name.toString();
    String subLocality = placeMark.thoroughfare.toString();
    String locality = placeMark.locality.toString();
    String administrativeArea = placeMark.administrativeArea.toString();
    String postalCode = placeMark.postalCode.toString();
    String country = placeMark.country.toString();

    address1controller.text = locationNumber + ", " + subLocality;
    zipcontroller.text = postalCode;
    citycontroller.text = locality;
    statecontroller.text = administrativeArea;
    update();
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<void> getMapLocation() async {
    GMapLocation _del = await Get.toNamed("/mappage");
  }

  void showShopMarker() {
    MarkerId markerId1 = MarkerId("13");
    markers.add(Marker(
      markerId: markerId1,
      position: LatLng(5.363793, 100.459687),
      infoWindow: InfoWindow(
        title: 'Shop Location',
        snippet: "Hong Mui Trading",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ));
  }

  void loadAdd(LatLng newLatLng) async {
    MarkerId markerId1 = MarkerId("12");

    List<Placemark> newPlace =
        await placemarkFromCoordinates(newLatLng.latitude, newLatLng.longitude);

    // this is all you need
    Placemark placeMark = newPlace[0];
    String name = placeMark.name.toString();
    String subLocality = placeMark.thoroughfare.toString();
    String locality = placeMark.locality.toString();
    String administrativeArea = placeMark.administrativeArea.toString();
    String postalCode = placeMark.postalCode.toString();
    String country = placeMark.country.toString();
    markers.clear();
    markers.add(Marker(
      markerId: markerId1,
      position: LatLng(newLatLng.latitude, newLatLng.longitude),
      infoWindow: InfoWindow(
        title: 'Address',
        snippet: address,
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
    ));
    dis = calculateDistance(newLatLng.latitude, newLatLng.longitude);
    gmaplocation = GMapLocation(name, subLocality, locality, administrativeArea,
        postalCode, country, newLatLng);
    update();
  }

  double calculateDistance(lat1, lon1) {
    var lat2 = 5.363793;
    var lon2 = 100.459687;
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }
}
