import 'package:flutter/material.dart';

class MyHeadPhone extends StatelessWidget {
  const MyHeadPhone({super.key});

  @override
  Widget build(BuildContext context) {
     List<Map<String, dynamic>> HeadPhoneList = [
      {"name": "BOAT AIRDOPES 190",
       "description": " TWS Earbuds with Beast Mode(50ms) for Gaming, 40H Playtime",
       "price" :"1,699.00",
       "image" : "images/BOAT AIRDOPES.webp"
       },

      {"name": "JBL 720BT Tune ",
       "description": "Bluetooth Headphones, Upto 76 Hours of Playtime, Bluetooth v5.3, Dual Pairing, 40mm Driver",
        "price" :"5,174.00",
        "image" : "images/JBL TUNE.webp"
       },

        
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "HEADPHONES",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 120, 241, 128),
      ),
      body: ListView(
        children: HeadPhoneList.map((headPhone) {
          return Container(
            height: 500,
            width: 365,
            margin: EdgeInsets.all(10), // Added margin to separate items
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(headPhone["image"]),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    height: 350,
                  ),
                  Text(
                    headPhone["name"],
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    headPhone["description"],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(height: 4),
                  Text(
                    headPhone["price"],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}