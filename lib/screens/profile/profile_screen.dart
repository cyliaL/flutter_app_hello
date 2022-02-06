import 'package:flutter/material.dart';
import 'package:flutter_app_hello/widgets/BottomNavbar.dart';
import 'package:flutter_app_hello/enums.dart';
import 'package:flutter_app_hello/widgets/navigation_drawer_widget.dart';
import 'package:flutter_app_hello/screens/notification/notification_details.dart';
import 'package:iconly/iconly.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
          backgroundColor: Colors.black,
          /*leading: IconButton(
                icon: const Icon(Icons.menu, color:Colors.white),
                onPressed: () {
                  setState(() {
                  });
            }),*/
          title: const Text("Profile"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(IconlyBold.notification),
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        NotificationScreen(),
                  ));},),]
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
