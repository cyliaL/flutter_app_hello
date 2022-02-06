import 'package:flutter/material.dart';
import 'package:flutter_app_hello/widgets/navigation_drawer_widget.dart';
import 'package:flutter_app_hello/screens/notification/notification_details.dart';
import 'categories.dart';
import 'new_arrival_products.dart';
import 'popular_products.dart';
import 'search_form.dart';


import '../../../constants.dart';
import '../../../size_config.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
