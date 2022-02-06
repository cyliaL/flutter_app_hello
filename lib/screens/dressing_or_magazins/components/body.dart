import 'package:flutter/material.dart';
import 'package:flutter_app_hello/widgets/navigation_drawer_widget.dart';
import 'package:flutter_app_hello/screens/notification/notification_details.dart';
import 'package:flutter_app_hello/screens/home/home_screen.dart';


import '../../../constants.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFF),
        ),
        child: Column(
          children: [
            Container(
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }, // needed
                child: Image.asset(
                  "assets/images/magasin_1.jpg",
                  width: size.width,
                  height: size.height*0.35,
                ),
              ),
            ),

            Container(
              child: Image.asset(
                "assets/images/logo_1.jpg",
                width: size.width*0.3,
                height: size.height*0.1,
              ),
            ),


            Container(
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }, // needed
                child: Image.asset(
                  "assets/images/dressing.jpg",
                  width: size.width,
                  height: size.height*0.35,
                ),
              ),
            ),
            /* Container(
              child: new Image.asset(
                'assets/images/logo.jpg',
              ),
            ),*/


          ],
        ),
      ),
    );
  }
}
