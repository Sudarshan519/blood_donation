import 'package:blood_donation/controller/homeController.dart';
import 'package:blood_donation/pages/account/account.dart';
import 'package:blood_donation/pages/login/login.dart';
import 'package:blood_donation/pages/map/map.dart';
import 'package:blood_donation/pages/posts/posts.dart';
import 'package:blood_donation/pages/requests/request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final homeController = Get.put(HomeController());

  Widget buildBody(context) {
    switch (homeController.selectedIndex.value) {
      case 0:
        return RequestPost();
        break;
      case 1:
        return CustomMap();
        break;
      case 2:
        return AccountView(
          isMe: true,
        );
        // return Container(
        //     alignment: Alignment.center,
        //     child: TextButton(
        //       child: Text(
        //         'Account',
        //         style:
        //             TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
        //       ),
        //       style: TextButton.styleFrom(backgroundColor: Colors.deepOrange),
        //       onPressed: () {},
        //     ));
        break;

      default:
        return Text('Page not found');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
              title: Text('Blood Donation', style: TextStyle(fontSize: 14)),
              actions: [
                IconButton(
                    onPressed: () {
                      Get.to(Request());
                    },
                    icon: Icon(Icons.add_location_alt_rounded)),
                IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {
                    Get.to(LoginNRegister());
                  },
                )
              ]),
          body: buildBody(context),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 6,
            clipBehavior: Clip.antiAlias,
            child: BottomNavigationBar(
              onTap: (v) {
                homeController.selectedIndex.value = v;
                homeController.userlistshown.value = false;
              },
              selectedItemColor: Theme.of(context).primaryColor,
              currentIndex: homeController.selectedIndex.value,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: 'Requests'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.clear),
                    label: homeController.userlistshown.value ? 'Map' : 'List'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Account'),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: homeController.selectedIndex.value == 1
                ? Theme.of(context).scaffoldBackgroundColor
                : Colors.grey[300],
            onPressed: () {
              homeController.selectedIndex.value = 1;
              homeController.userlistshown.toggle();
            },
            child: CircleAvatar(
              backgroundColor: homeController.selectedIndex.value == 1
                  ? Theme.of(context).primaryColor
                  : Colors.grey,
              child: Icon(
                  homeController.userlistshown.value
                      ? Icons.map_sharp
                      : Icons.list,
                  color: homeController.selectedIndex.value == 1
                      ? Colors.white
                      : Colors.white),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ));
  }
}
