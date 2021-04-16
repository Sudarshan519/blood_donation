import 'package:blood_donation/controller/homeController.dart';
import 'package:blood_donation/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Blood Donation'), actions: [
        Icon(Icons.add_location_alt_rounded),
        Text('List'),
        Icon(Icons.filter_list)
      ]),
      body: Column(
        children: [
          Container(
              height: height * .14,
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomTextField(
                        hintText: 'Search',
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        //notchMargin: 6,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          selectedItemColor: Theme.of(context).primaryColor,
          currentIndex: homeController.selectedIndex.value,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.card_membership)),
            // BottomNavigationBarItem(icon: Icon(Icons.ma)),
            BottomNavigationBarItem(icon: Icon(Icons.map)),
            BottomNavigationBarItem(icon: Icon(Icons.person)),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: CircleAvatar(
      //     backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      //     child: Icon(Icons.map_sharp),

      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
