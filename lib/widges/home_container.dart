// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:nilu_app/pages/all_sales_page.dart';

class HomeContainer extends StatelessWidget {
 
  HomeContainer(
      {super.key,
     });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  InkWell(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AllSalesPage()));},
                    
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 135,
                      width: 135,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  child: Icon(Icons.pause_presentation_rounded,
                                      color: Color.fromARGB(255, 230, 143, 14)),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(169, 255, 234, 210),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  'All sales',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //---------------------------------------------------------------
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 135,
                    width: 135,
                    //--------------------
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              child: Icon(Icons.shopping_bag,
                                  color: Color.fromARGB(255, 236, 147, 147)),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(135, 255, 200, 230),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              'Products',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //-------------------------------------------------------
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 135,
                  width: 135,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            child: Icon(Icons.people,
                                color: Color.fromARGB(255, 0, 183, 255)),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(174, 204, 241, 255),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            'Clients',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //-----------------------------
              SizedBox(
                width: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 135,
                width: 135,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          child: Icon(Icons.shopping_basket,
                              color: Color.fromARGB(255, 0, 170, 0)),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(178, 206, 255, 191),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          'New sale',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );  
  }
}
