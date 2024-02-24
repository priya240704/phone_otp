
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phone_otp/Home_page.dart';
import 'package:phone_otp/online_page.dart';
import 'package:phone_otp/phone.dart';
import 'package:phone_otp/user_list.dart';

import 'otp.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      drawerTheme: DrawerThemeData(scrimColor: Colors.transparent)
    ),
    initialRoute: 'online',
    routes: {
      'phone': (context)=>PhonePage(),
      'otp': (context)=>OtpPage(),
      'home': (context)=>HomePage(),
      'user': (context)=>UserPage(),
      'online':(context)=>OnlinePage(),
    },
    home: HomePage(),
  ));
}


