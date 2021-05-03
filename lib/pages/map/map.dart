import 'package:blood_donation/controller/homeController.dart';
import 'package:blood_donation/models/user.dart';
import 'package:blood_donation/pages/account/account.dart';
import 'package:blood_donation/pages/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:platform_maps_flutter/platform_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomMap extends StatefulWidget {
  @override
  _CustomMapState createState() => _CustomMapState();
}

class _CustomMapState extends State<CustomMap> {
  _launchCaller(String phone) async {
    String url = "tel:$phone";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<UserModel> user = [
    UserModel(
      id: '1 ',
      latitude: 47.6,
      longitude: 8.8796,
    ),
    UserModel(
      id: '12 ',
      latitude: 47.5999254766742,
      longitude: 8.880098685622215,
    ),
    UserModel(
      id: '154 ',
      latitude: 47.60040882880962,
      longitude: 8.879983685910702,
    ),
  ];

  BitmapDescriptor customIcon;
  BitmapDescriptor userIcon;
  PlatformMapController mapController;
  final homeController = Get.find<HomeController>();
  Set<Marker> markers;

  createMarker(context, image) {
    ImageConfiguration config =
        createLocalImageConfiguration(context, size: Size(10, 10));
    //  ImageConfiguration configuration = createLocalImageConfiguration(context);
    BitmapDescriptor.fromAssetImage(
      config,
      image,
    ).then((icon) {
      setState(() {
        customIcon = icon;
      });
    });
  }

  userMarker(context, image) {
    ImageConfiguration config =
        createLocalImageConfiguration(context, size: Size(10, 10));

    BitmapDescriptor.fromAssetImage(
      config,
      image,
    ).then((icon) {
      setState(() {
        userIcon = icon;
      });
    });
  }

  addMarker() {
    // List<Marker> marker = [
    //   Marker(
    //     icon: customIcon,
    //     markerId: MarkerId('marker_123'),
    //     position: LatLng(47.6, 8.8796),
    //     consumeTapEvents: true,
    //     infoWindow: InfoWindow(
    //       title: 'DonorMarker',
    //       snippet: "Distance Platform Marker",
    //     ),
    //     onTap: () {
    //       userMarker(context, 'assets/user.png');
    //       print("Marker tapped");
    //     },
    //   ),
    //   Marker(
    //     icon: customIcon,
    //     markerId: MarkerId('marker_14'),
    //     position: LatLng(47.5999254766742, 8.880098685622215),
    //     consumeTapEvents: true,
    //     infoWindow: InfoWindow(
    //       title: 'PlatformMarker',
    //       snippet: "Hi I'm a Platform Marker",
    //     ),
    //     onTap: () {
    //       print("Marker tapped");
    //     },
    //   ),
    //   Marker(
    //     icon: customIcon,
    //     markerId: MarkerId('marker_12'),
    //     position: LatLng(47.60040882880962, 8.879983685910702),
    //     consumeTapEvents: true,
    //     infoWindow: InfoWindow(
    //       title: 'PlatformMarker',
    //       snippet: "Hi I'm a Platform Marker",
    //     ),
    //     onTap: () {
    //       print("Marker tapped");
    //     },
    //   )
    // ];
    // marker.forEach((element) {
    //   setState(() {
    //     markers.add(element);
    //   });
    // });
    // markers.clear();
    user.forEach((element) {
      print(element.latitude);

      markers.add(Marker(
        icon: customIcon,
        markerId: MarkerId(element.id),
        position: LatLng(element.latitude, element.longitude),
        consumeTapEvents: true,
        infoWindow: InfoWindow(
          title: 'PlatformMarker',
          snippet: "Hi I'm a Platform Marker",
        ),
        onTap: () {
          print("Marker tapped");
        },
      ));
    });
  }

  @override
  void initState() {
    super.initState();
    markers = Set.from([]);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //addMarker();
    createMarker(context, 'assets/request.png');
    userMarker(context, 'assets/defaultuser.png');
    return Stack(
      children: [
        if (0 != 0)
          PlatformMap(
            initialCameraPosition: CameraPosition(
              target: const LatLng(47.6, 8.8796),
              zoom: 16.0,
            ),
            mapType: MapType.normal,
            markers: markers,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            onTap: (pos) {
              print(pos);
              userMarker(context, 'assets/defaultuser.png');
              Marker m = Marker(
                  markerId: MarkerId('1sfesfe'), icon: userIcon, position: pos);
              setState(() {
                markers.add(m);
                print(markers.length);
              });
            },
            onCameraMove: (cameraUpdate) {
              print('onCameraMove: $cameraUpdate');
              //createMarker(context);
            },
            compassEnabled: true,
            onMapCreated: (controller) {
              setState(() {
                mapController = controller;
              });
              Future.delayed(Duration(seconds: 2)).then(
                (_) {
                  addMarker();
                  controller.animateCamera(
                    CameraUpdate.newCameraPosition(
                      const CameraPosition(
                        bearing: 270.0,
                        target: LatLng(47.6, 8.8796),
                        tilt: 30.0,
                        zoom: 18,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        if (!homeController.userlistshown.value)
          Container(
            color: Colors.white,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemBuilder: (_, int i) {
                  return ListTile(
                    onTap: () {
                      Get.to(AccountView(
                        isMe: false,
                      ));
                    },
                    contentPadding: EdgeInsets.zero,
                    title: Container(
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10),
                            // color: Colors.grey.withOpacity(.4),
                            ),
                        width: double.infinity,
                        height: 90,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://wallpaperaccess.com/full/2213424.jpg'),
                                          fit: BoxFit.cover),
                                      color: Colors.grey[600],
                                      // borderRadius: BorderRadius.circular(5)
                                    ),
                                    width: 80,
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    right: 5,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.deepOrange,
                                      child: Text(
                                        'A-',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                  height: 80,
                                  padding: EdgeInsets.only(right: 10),
                                  width:
                                      MediaQuery.of(context).size.width - 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color: Colors.deepOrange,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Sudarshan',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                'Ranibari,Kathmandu ',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  for (int i = 0; i < 5; i++)
                                                    Icon(
                                                      Icons.star_border,
                                                      color: Colors.white,
                                                      size: 16,
                                                    ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      mapController.animateCamera(
                                                          CameraUpdate
                                                              .newCameraPosition(
                                                                  CameraPosition(
                                                        bearing: 45,
                                                        target: LatLng(
                                                            47.5999254766742,
                                                            8.880098685622215),
                                                        tilt: 30.0,
                                                        zoom: 20,
                                                      )));
                                                      homeController
                                                          .userlistshown
                                                          .value = true;
                                                    },
                                                    child: Icon(
                                                      Icons.map_rounded,
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ]),
                                      ),
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Get.to(LoginNRegister());
                                              },
                                              child: CircleAvatar(
                                                radius: 16,
                                                backgroundColor: Colors.grey,
                                                child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey[300],
                                                    radius: 14,
                                                    child: Icon(
                                                        Icons.more_horiz,
                                                        color: Colors.grey[700],
                                                        size: 18)),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                _launchCaller('123456');
                                              },
                                              child: CircleAvatar(
                                                  backgroundColor:
                                                      Colors.green[200],
                                                  radius: 16,
                                                  child: RotatedBox(
                                                      quarterTurns: 35,
                                                      child: Icon(Icons.phone,
                                                          color:
                                                              Colors.green[700],
                                                          size: 15))),
                                            )
                                          ]),
                                    ],
                                  )),
                              SizedBox(width: 10),
                            ])),
                  );
                }),
          )
      ],
    );
  }
}
