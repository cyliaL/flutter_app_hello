import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app_hello/screens/home/home_screen.dart';
import 'package:flutter_app_hello/screens/profile/profile_screen.dart';
import 'package:flutter_app_hello/screens/vendre/vendre_screen.dart';
import 'package:flutter_app_hello/screens/chat/chat_screen.dart';
import 'package:iconly/iconly.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      //padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
          //top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Container(
            height: 70,
            child: Column(
                children: [
                    IconButton(
                      icon: Icon(
                        (MenuState.home == selectedMenu)?  IconlyBold.home: IconlyLight.home,
                        size:(MenuState.home == selectedMenu)? size.width * 0.085:size.width * 0.075,
                        color: (MenuState.home == selectedMenu)
                            ? const Color(0xFF000000)
                            : const Color(0x6F000000),
                      ),
                      onPressed: () =>
                      Navigator.pushNamed(context, HomeScreen.routeName),
                    ),
                    Text("Accueil",style: TextStyle(fontSize: 12,color: (MenuState.home == selectedMenu)
                      ? const Color(0xFF000000)
                      : const Color(0x6F000000),)),])),
            Container(
            height: 70,
            child: Column(
                children: [
                    IconButton(
                      icon: Icon(
                        (MenuState.vendre == selectedMenu)?  IconlyBold.plus: IconlyLight.plus,
                        size:(MenuState.vendre == selectedMenu)? size.width * 0.085:size.width * 0.075,
                        color: (MenuState.vendre == selectedMenu)
                            ? const Color(0xFF000000)
                            : const Color(0x6F000000),
                      ),
                      onPressed: () {Navigator.pushNamed(context, VendreScreen.routeName);},
                    ),
                    Text("Vendre",style: TextStyle(fontSize: 12,color: (MenuState.vendre == selectedMenu)
                        ? const Color(0xFF000000)
                        : const Color(0x6F000000),)),
                    ]),
            ),
            Container(
              height: 70,
            child: Column(
                children: [
                  IconButton(
                    icon: Icon(
                    (MenuState.chat == selectedMenu)?  IconlyBold.chat: IconlyLight.chat,
                    size:(MenuState.chat == selectedMenu)? size.width * 0.085:size.width * 0.075,
                    color: (MenuState.chat == selectedMenu)
                        ? const Color(0xFF000000)
                        : const Color(0x6F000000),
                    ),
                    onPressed: () {Navigator.pushNamed(context, ChatScreen.routeName);},
                  ),
                  Text("Messages",style: TextStyle(fontSize: 12,color: (MenuState.chat == selectedMenu)
                      ? const Color(0xFF000000)
                      : const Color(0x6F000000),)),
                ],
            ),
            ),

            Container(
            height: 70,
            child: Column(
                children: [
                    IconButton(
                        icon: Icon(
                        (MenuState.profile == selectedMenu)?  IconlyBold.profile: IconlyLight.profile,
                        size:(MenuState.profile == selectedMenu)? size.width * 0.085:size.width * 0.075,
                        color: (MenuState.profile == selectedMenu)
                            ? const Color(0xFF000000)
                            : const Color(0x6F000000),
                        ),
                      onPressed: () {Navigator.pushNamed(context, ProfileScreen.routeName);}
                    ),
                    Text("Profile",style: TextStyle(fontSize: 12,color: (MenuState.profile == selectedMenu)
                          ? const Color(0xFF000000)
                          : const Color(0x6F000000),),),])),
                    ],
                )),
            );
  }
}
