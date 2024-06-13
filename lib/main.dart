// ignore_for_file: prefer_const_constructors, unused_label, dead_code

import 'package:flutter/material.dart';
import 'package:nilu_app/pages/my_home_page.dart';
import 'package:nilu_app/sql_helper/sql_helper.dart';
import 'package:nilu_app/widges/home_container.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
var sqlHelper =SqlHelper();
  sqlHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // color: Colors.white,
      // theme: ThemeData(
      //   appBarTheme: AppBarTheme(
      //       backgroundColor: Color(0xFF0157DB),
      //       foregroundColor: Color(0xff0157db)),
      //   useMaterial3: true,
      home:MyHomePage(),
      
      );

  }
}
