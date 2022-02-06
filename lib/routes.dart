import 'package:flutter/widgets.dart';
//import 'package:flutter_app_hello/screens/complete_profile/complete_profile_screen.dart';
//import 'package:flutter_app_djedid/screens/details/details_screen.dart';
//import 'package:flutter_app_djedid/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_app_hello/screens/home/home_screen.dart';
import 'package:flutter_app_hello/screens/notification/notification_details.dart';
//import 'package:flutter_app_djedid/screens/login_success/login_success_screen.dart';
//import 'package:flutter_app_djedid/screens/otp/otp_screen.dart';
import 'package:flutter_app_hello/screens/profile/profile_screen.dart';
import 'package:flutter_app_hello/screens/chat/chat_screen.dart';
import 'package:flutter_app_hello/screens/Vendre/vendre_screen.dart';
import 'package:flutter_app_hello/screens/dressing_or_magazins/dressing_or_magazins_screen.dart';
//import 'package:flutter_app_djedid/screens/sign_in/sign_in_screen.dart';
//import 'package:flutter_app_djedid/screens/splash/splash_screen.dart';

//import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ChatScreen.routeName: (context) => ChatScreen(),
  VendreScreen.routeName: (context) => VendreScreen(),
  DressingOrmagazinesScreen.routeName: (context) => DressingOrmagazinesScreen(),
  //NotificationScreen.routeName: (context) => NotificationScreen(),
  //SignInScreen.routeName: (context) => SignInScreen(),
  //ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  //LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  //SignUpScreen.routeName: (context) => SignUpScreen(),
  //CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  //OtpScreen.routeName: (context) => OtpScreen(),
  //DetailsScreen.routeName: (context) => DetailsScreen(),
  //CartScreen.routeName: (context) => CartScreen(),

};
