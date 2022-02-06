import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'section_title.dart';
import 'Section_title_categories.dart';



// We need satefull widget for our categories

/*class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? Colors.yellow: Colors.black12,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: defaultPadding / 4), //top padding 5
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}*/

class Categories extends StatefulWidget {
  @override
  _Categories createState() => _Categories();
}

class _Categories extends State<Categories> {
  List<String> categories = [" Homme ", " Femme ", " Enfant "," Accessoires ", " Sac "];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(
          height: 39,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildCategory(index),
              separatorBuilder: (context, index) => const SizedBox(width: defaultPadding),
          ),
        )
      ]
    );
  }


  @override
  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },

      /*style: OutlinedButton.styleFrom(
        //textStyle: (color:Colors.white),
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
            //color:(index==0)?const Color(0xFF86C5F8):(index==1)?const Color(0xF5F58BAF):(index==2)?const Color(0xFFFFF596):const Color(0xFF86FAEF)
        ),
      ),*/
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          //backgroundColor: Colors.black,
          borderRadius: const BorderRadius.all( Radius.circular(defaultBorderRadius)),
          border: Border.all(),
          //color:(index==0)?const Color(0xFF86C5F8):(index==1)?const Color(0xF5F58BAF):(index==2)?const Color(0xFFFFF596):const Color(0xFF86FAEF),
          color: selectedIndex == index ? Colors.black : Colors.transparent,
        ),
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding / 2, horizontal: defaultPadding / 4),
        child: Column(
          children: [
            //SvgPicture.asset(icon),
            //const SizedBox(height: defaultPadding / 2),
            Text(
              categories[index],
              style: selectedIndex == index?TextStyle(color: Colors.white):TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

/*SizedBox(
height: 84,
child: ListView.separated(
scrollDirection: Axis.horizontal,
itemCount: demo_categories.length,
itemBuilder: (context, index) => CategoryCard(
icon: demo_categories[index].icon,
title: demo_categories[index].title,
press: () {},
),
separatorBuilder: (context, index) => const SizedBox(width: defaultPadding),
),
);*/