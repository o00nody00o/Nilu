// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nilu_app/widges/home_container.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 310,
          backgroundColor: Color.fromARGB(255, 0, 81, 255),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 320),
                  child: IconTheme(
                      data: IconThemeData(color: Colors.white),
                      child: Icon(Icons.menu)),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(
                    "Nilu app",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(158, 59, 119, 248),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 359,
                  child: Center(
                    child: Text(
                      'Exchange rate       1 EUR = 11,712.25 UZS',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(158, 59, 119, 248),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 359,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'Todays sales                     110,000,00 UZS',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),

      //----------------------------------------------------------------------
      body: HomeContainer()
      );
    
  }
}
