import 'package:flutter/material.dart';
import 'package:flutter_app_hello/constants.dart';
import 'package:flutter_app_hello/provider/navigation_provider.dart';
import 'package:flutter_app_hello/screens/dressing_or_magazins/dressing_or_magazins_screen.dart';
import 'package:flutter_app_hello/screens/home/home_screen.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app_hello/routes.dart';



Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => NavigationProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      //home: const HomeScreen(),
      initialRoute: DressingOrmagazinesScreen.routeName,
      routes: routes,
    ),
  );


  // This widget is the root of your application.
  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'The Flutter Way',
     theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      home: const HomeScreen(),
    );
  }*/
}
