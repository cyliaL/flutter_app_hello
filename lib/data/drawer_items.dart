import 'package:flutter_app_hello/models/drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

final itemsFirst = [
  const DrawerItem(title: 'Mes favoris', icon: IconlyBold.heart),
  const DrawerItem(title: 'Mes achats', icon: IconlyBold.bag),
  const DrawerItem(title: 'Paramètres', icon: IconlyBold.setting),
  const DrawerItem(title: 'Contactez-nous', icon: IconlyBold.message),
];

final itemsSecond = [
  //const DrawerItem(title: 'A propos de nous', icon: IconlyBold.document),
  const DrawerItem(title: 'Se déconnecter', icon: IconlyBold.logout),
];

