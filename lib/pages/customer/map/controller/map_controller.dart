import 'dart:async';
import 'dart:math';

import 'package:final_year_project/models/gmapLocation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController {
  double dis = 0;
  String address = "No location selected";
  CameraPosition shopPosition = CameraPosition(
    target: LatLng(5.363793, 100.459687),
    zoom: 17
  );
  Set<Marker> markers = Set();
  Completer<GoogleMapController> completercontroller = Completer();

  late GMapLocation gmaplocation;

  @override
  void onInit() {
    showUserMarker();
    super.onInit();
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
    address = name +
        ", " +
        subLocality +
        "\n" +
        postalCode +
        " " +
        locality +
        "\n" +
        administrativeArea +
        " " +
        country;
    markers.clear();

    markers.add(Marker(
      markerId: markerId1,
      position: LatLng(newLatLng.latitude, newLatLng.longitude),
      infoWindow: InfoWindow(
        title: 'Address',
        snippet: address,
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ));
    dis = calculateDistance(newLatLng.latitude, newLatLng.longitude);
    gmaplocation = GMapLocation(name, subLocality, locality, administrativeArea,
        postalCode, country, newLatLng);
    update();
  }

  Future<void> showUserMarker() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    LatLng latLatPosition = LatLng(position.latitude, position.longitude);
    MarkerId markerId1 = MarkerId("13");

    List<Placemark> newPlace =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    // this is all you need
    Placemark placeMark = newPlace[0];
    String name = placeMark.name.toString();
    String subLocality = placeMark.thoroughfare.toString();
    String locality = placeMark.locality.toString();
    String administrativeArea = placeMark.administrativeArea.toString();
    String postalCode = placeMark.postalCode.toString();
    String country = placeMark.country.toString();

    address = name +
        ", " +
        subLocality +
        "\n" +
        postalCode +
        " " +
        locality +
        "\n" +
        administrativeArea +
        " " +
        country;

    markers.add(Marker(
      markerId: markerId1,
      position: latLatPosition,
      infoWindow: InfoWindow(
        title: 'Shop Location',
        snippet: "Hong Mui Trading",
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ));

    shopPosition = CameraPosition(
      target: LatLng(position.latitude, position.longitude),
      zoom: 17,
    );
print("HElllo");
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
