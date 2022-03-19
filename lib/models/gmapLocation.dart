import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMapLocation {
  String? locationNumber,
      subLocality,
      locality,
      administrativeArea,
      postalCode,
      country;
  LatLng? latlng;

  GMapLocation(this.locationNumber, this.subLocality, this.locality,
      this.administrativeArea, this.postalCode, this.country, this.latlng);

}
