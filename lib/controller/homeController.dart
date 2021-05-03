import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:platform_maps_flutter/platform_maps_flutter.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;
  BitmapDescriptor icon;
  var usericon;
  Set<Marker> marker = Set.from([]);
  Rx<BitmapDescriptor> customIcon;
  Rx<BitmapDescriptor> userIcon;
  var userlistshown                       =false.obs;
  var markers;
  @override
  void onInit() {
    super.onInit();
    usericon = icon.obs;
    customIcon = icon.obs;
    // userIcon = icon.obs;
    markers = marker.obs;
  }

  @override
  void onReady() {
    super.onReady();
  }

  void createMarker(BuildContext context, String s) {
    ImageConfiguration config =
        createLocalImageConfiguration(context, size: Size(10, 10));
    BitmapDescriptor.fromAssetImage(
      config,
      s,
    ).then((icon) {
      customIcon.value = icon;
    });
  }

  void addMarker(context) {
    markers.value = Set.from([
      Marker(
        icon: customIcon.value,
        markerId: MarkerId('marker_123'),
        position: LatLng(47.6, 8.8796),
        consumeTapEvents: true,
        infoWindow: InfoWindow(
          title: 'PlatformMarker',
          snippet: "Hi I'm a Platform Marker",
        ),
        onTap: () {
          userMarker(context, 'assets/user.png');
          print("Marker tapped");
        },
      ),
      Marker(
        icon: customIcon.value,
        markerId: MarkerId('marker_14'),
        position: LatLng(47.5999254766742, 8.880098685622215),
        consumeTapEvents: true,
        infoWindow: InfoWindow(
          title: 'PlatformMarker',
          snippet: "Hi I'm a Platform Marker",
        ),
        onTap: () {
          print("Marker tapped");
        },
      ),
      Marker(
        icon: customIcon.value,
        markerId: MarkerId('marker_12'),
        position: LatLng(47.60040882880962, 8.879983685910702),
        consumeTapEvents: true,
        infoWindow: InfoWindow(
          title: 'PlatformMarker',
          snippet: "Hi I'm a Platform Marker",
        ),
        onTap: () {
          print("Marker tapped");
        },
      )
    ]);
  }

  void userMarker(context, String s) {
    
    ImageConfiguration config =
        createLocalImageConfiguration(context, size: Size(10, 10));

    BitmapDescriptor.fromAssetImage(
      config,
      s,
    ).then((icon) {
      userIcon.value = icon;
    
    });
  }
}
