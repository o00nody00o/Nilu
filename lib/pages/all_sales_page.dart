// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AllSalesPage extends StatelessWidget {
  const AllSalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text(
          'All sales',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 81, 255),
      ),
      body: Column(
        children: [
      Container(
         color: Color.fromARGB(255, 255, 232, 161),
         height: 40,
        child: 
             Row(
              children: [
                SizedBox(
                      width: 10,
                    ),
                Title(
                    color: Colors.black,
                    child: Text(
                      '03.06.2022',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      width: 120,
                    ),
                
                    Title(
                    color: const Color.fromARGB(255, 134, 134, 134),
                    child: Text(
                      'total: 110,000.00 UZS',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
               
               
              ],
            ),)
          // Container(
          //   decoration: BoxDecoration(
          //           color: Color.fromARGB(248, 247, 224, 165),

          //         ),
          //         height:50,
          //         width: 400,
          //         child: Title(color: color, child: child):,
          // )
        ],
      ),
    );
  }
}
