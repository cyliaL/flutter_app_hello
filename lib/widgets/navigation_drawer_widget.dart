import 'package:flutter_app_hello/data/drawer_items.dart';
import 'package:flutter_app_hello/models/drawer_item.dart';
import 'package:flutter_app_hello/pages_navigation_bar/mes_achats.dart';
import 'package:flutter_app_hello/pages_navigation_bar/mes_favoris.dart';
import 'package:flutter_app_hello/pages_navigation_bar/parametres.dart';
import 'package:flutter_app_hello/pages_navigation_bar/contactez_nous.dart';
import 'package:flutter_app_hello/pages_navigation_bar/a_propos_de_nous.dart';
import 'package:flutter_app_hello/pages_navigation_bar/se_deconnecter.dart';
import 'package:flutter_app_hello/provider/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

import '../constants.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final safeArea =
        EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top);

    final provider = Provider.of<NavigationProvider>(context);
    final isCollapsed = provider.isCollapsed;

    return Container(
      width: isCollapsed ? MediaQuery.of(context).size.width * 0.2 : null,
      child: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),

          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 24).add(safeArea),
                width: double.infinity,
                color: isCollapsed? Colors.transparent:Colors.white12,
                child: buildHeader(isCollapsed),
              ),
              const SizedBox(height: 24),
              buildList(items: itemsFirst, isCollapsed: isCollapsed),
              const SizedBox(height: 24),
              Divider(color: Colors.white70),
              const SizedBox(height: 24),
              buildList(
                indexOffset: itemsFirst.length,
                items: itemsSecond,
                isCollapsed: isCollapsed,
              ),
              Spacer(),
              buildCollapseIcon(context, isCollapsed),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList({
    required bool isCollapsed,
    required List<DrawerItem> items,
    int indexOffset = 0,
  }) =>
      ListView.separated(
        padding: isCollapsed ? EdgeInsets.zero : padding,
        shrinkWrap: true,
        primary: false,
        itemCount: items.length,
        separatorBuilder: (context, index) => SizedBox(height: 16),
        itemBuilder: (context, index) {
          final item = items[index];

          return buildMenuItem(
            isCollapsed: isCollapsed,
            text: item.title,
            icon: item.icon,
            onClicked: () => selectItem(context, indexOffset + index),
          );
        },
      );

  void selectItem(BuildContext context, int index) {
    final navigateTo = (page) => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => page,
        ));

    Navigator.of(context).pop();

    switch (index) {
      case 0:
        navigateTo(mesFavoris());
        break;
      case 1:
        navigateTo(MesAchats());
        break;
      case 2:
        navigateTo(Parametres());
        break;
      case 3:
        navigateTo(ContactezNous());
        break;
      case 4:
        navigateTo(AproposDeNous());
        break;
      case 5:
        navigateTo(SeDeconnecter());
        break;
    }
  }

  Widget buildMenuItem({
    required bool isCollapsed,
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.white;
    final leading = Icon(icon, color: color);
    return Material(
      color: Colors.transparent,
      child: isCollapsed
          ? ListTile(
              title: leading,
              onTap: onClicked,
            )
          : ListTile(
              leading: leading,
              title: Text(text, style: TextStyle(color: color, fontSize: 16)),
              onTap: onClicked,
            ),
    );
  }

  Widget buildCollapseIcon(BuildContext context, bool isCollapsed) {
    final double size = 52;
    final icon = isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    final alignment = isCollapsed ? Alignment.center : Alignment.centerRight;
    final margin = isCollapsed ? null : EdgeInsets.only(right: 16);
    final width = isCollapsed ? double.infinity : size;

    return Container(
      alignment: alignment,
      margin: margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Container(
            width: width,
            height: size,
            child: Icon(icon, color: Colors.white),
          ),
          onTap: () {
            final provider =
                Provider.of<NavigationProvider>(context, listen: false);

            provider.toggleIsCollapsed();
          },
        ),
      ),
    );
  }

  Widget buildHeader(bool isCollapsed) => !isCollapsed
      ? Container(
    margin: EdgeInsets.only(left: defaultPadding*2),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 24),
              const Icon(Icons.account_circle, color: Colors.white,size: 60,),
              SizedBox(width: 16),
              //Image.asset('assets/images/logo.jpg'),
              Text(
                'Se connecter',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ): const Icon(Icons.account_circle, color: Colors.white,size: 30,);
}
