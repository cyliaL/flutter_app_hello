import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app_hello/constants.dart';
import 'package:iconly/iconly.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app_hello/screens/home/components/app_bar_home_widget.dart';
//import 'package:flutter_app_hello/widgets/BottomNavbar.dart';
//import 'package:flutter_app_hello/controller/ScrollToHideWidget.dart';
import 'dart:math' as math;
import 'package:flutter_app_hello/provider/navigation_provider.dart';
import 'package:flutter_app_hello/widgets/navigation_drawer_widget.dart';
import 'package:flutter_app_hello/screens/notification/notification_details.dart';
import '../../enums.dart';
import 'components/categories.dart';
import 'components/new_arrival_products.dart';
import 'components/popular_products.dart';
import 'components/search_form.dart';
import 'components/body.dart';
import 'package:flutter_app_hello/widgets/BottomNavbar.dart';


class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  final String title="";

  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int _selectedIndex = 0;
  int pressed=0;

  final widgetTitle = ["Vends ton article", "Status", "Call"];

  Icon customIcon = const Icon(IconlyLight.search, color: Colors.white,);
  Widget customSearchBar = const Text('My Personal Journal');
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(index==1){

      }
    });
  }



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
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
            title: const Text("VIDEVIT"),
            centerTitle: true,
            actions: [
            IconButton(
              icon: Icon(IconlyBold.notification),
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        NotificationScreen(),
                  ));},),
            ]
    ),

      body:Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),

      /*Container(
        decoration: const BoxDecoration(
          color: Color(0x8000000),
        ),
        child:SingleChildScrollView(
            //controller: _scrollController,
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* Text(
                  "Explorer",
                    style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                  const Text(
                  "Meilleures O*outfits pour vous",
                    style: TextStyle(fontSize: 18),
                  ),*/
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: SearchForm(),
                    ),
                    Categories(),
                    NewArrivalProducts(),
                    PopularProducts(),
              ],
            ),
        ),
      ):Container(),*/

      /*bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              (_selectedIndex==0)?  IconlyBold.home: IconlyLight.home,
              size:(_selectedIndex==0)? size.width * 0.085:size.width * 0.065,
              color: (_selectedIndex == 0)
                  ? const Color(0xFF000000)
                  : const Color(0x6F000000),
            ),
            label: 'Acceuil',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (_selectedIndex==1)?  IconlyBold.plus: IconlyLight.plus,
              size:(_selectedIndex==1)? size.width * 0.085:size.width * 0.065,
              color: (_selectedIndex == 1)
                  ? const Color(0xFF000000)
                  : const Color(0x6F000000),
            ),
            label: 'Vendre',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (_selectedIndex==2)?  IconlyBold.chat: IconlyLight.chat,
              size:(_selectedIndex==2)? size.width * 0.085:size.width * 0.065,
              color: (_selectedIndex == 2)
                  ? const Color(0xFF000000)
                  : const Color(0x6F000000),
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (_selectedIndex==3)?  IconlyBold.profile: IconlyLight.profile,
              size:(_selectedIndex==3)? size.width * 0.085:size.width * 0.065,
              color: (_selectedIndex == 3)
                  ? const Color(0xFF000000)
                  : const Color(0x6F000000),
            ),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        //selectedLabelStyle: const TextStyle(fontSize: 14, color: Color(0xFF000000)),
        //unselectedLabelStyle: const TextStyle(fontSize: 12, color: Color(0x6F000000)),
        selectedItemColor: Color(0xFF000000),
        unselectedItemColor: Color(0x6F000000),
        onTap: _onItemTapped,
      ),*/
    );
  }
}

/*var currentIndex = 0;
  int pressed = 1;
  @override
  Widget build(BuildContext context) {
    int currentTab=0;
    Size size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/menu.svg"),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/Location.svg"),
              const SizedBox(width: defaultPadding / 2),
              Text(
                "15/2 New Texas",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: SvgPicture.asset("assets/icons/Notification.svg"),
              onPressed: () {},
            ),
          ],
        ),

        //bottomNavigationBar: buildBottomNavBar(0, size, isDarkMode),

        body: SingleChildScrollView(
          //controller: _scrollController,
          padding: const EdgeInsets.all(defaultPadding),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "Explore",
                style: Theme.of(context)
                .textTheme
                .headline4!
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
              ),
              const Text(
                "best Outfits for you",
                  style: TextStyle(fontSize: 18),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: defaultPadding),
                child: SearchForm(),
              ),
              const Categories(),
              const NewArrivalProducts(),
              const PopularProducts(),
            ],
          ),
        ),


      /*bottomNavigationBar: Container(
        //margin: EdgeInsets.all(20),

        height: size.width * .135,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                    () {
                  currentIndex = index;
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    bottom: index == currentIndex ? 0 : size.width * .029,
                    right: size.width * .0422,
                    left: size.width * .0422,
                  ),
                  width: size.width * .128,
                  height: index == currentIndex ? size.width * .014 : 0,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                  ),
                ),
                Icon(
                  listOfIcons[index],
                  size: size.width * .076,
                  color: index == currentIndex
                      ? Colors.black
                      : Colors.black38,
                ),
                SizedBox(height: size.width * .03),
              ],
            ),
          ),
        ),
      ),*/
    bottomNavigationBar: Container(
    //alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 2.5,
              offset: Offset(1.5, 1.5),
              // shadow direction: bottom right
            )
          ],
          borderRadius: BorderRadius.circular(0.0),
          color: Color(0xffffffff),
        ),
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => setState(() => pressed = 1),
                    child: Container(
                      child: Icon(
                        (pressed==1)?  Icons.home: Icons.home_outlined,
                        size:(pressed==1)? size.width * 0.095:size.width * 0.075,
                        color: (pressed == 1)
                            ? Color(0xFF000000)
                            : Color(0xFF000000),
                      ),
                    ),
                  ),
                  GestureDetector(
                    //onTap: () => setState(() => pressed = 2),
                    onTap: () {
                      setState(() {
                        pressed = 2;
                      });
                      HomeScreen();
                    },
                    child: Container(

                      child: Icon(
                        (pressed==2)?  Icons.favorite: Icons.favorite_outline,
                        size:(pressed==2)? size.width * 0.095:size.width * 0.075,
                        color: (pressed == 2)
                            ? Color(0xFF000000)
                            : Color(0xFF000000),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => pressed = 3),
                    child: Container(
                      child: Icon(
                        (pressed==3)?  Icons.add_circle: Icons.add_circle_outline,
                        size:(pressed==3)? size.width * 0.095:size.width * 0.075,
                        color: (pressed == 3)
                            ? Color(0xFF000000)
                            : Color(0xFF000000),
                      ),
                    ),
                  ),
                 /* GestureDetector(
                    onTap: () => setState(() => pressed = 4),
                    child: Container(
                        child: Icon(
                          (pressed==4)?  Icons.mail: Icons.mail_outline,
                          size:(pressed==4)? size.width * 0.095:size.width * 0.075,
                          color: (pressed == 4)
                              ? Color(0xFF000000)
                              : Color(0xFF000000),
                        ),

                    ),
                  ),*/
                  GestureDetector(
                    onTap: () => setState(() => pressed = 5),
                    child: Container(
                      child: Icon(
                        (pressed==5)?  Icons.person: Icons.person_outline,
                        size:(pressed==5)? size.width * 0.095:size.width * 0.075,
                        color: (pressed == 5)
                            ? Color(0xFF000000)
                            : Color(0xFF000000),
                      ),

                    ),
                  )
                ]),
        ),
      ),
    );


  }*/


