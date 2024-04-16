import 'package:flutter/material.dart';

class MyPhone extends StatelessWidget {
  const MyPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> phoneList = [
      {"name": "Apple Iphone 15",
       "description": "8GB RAM 128 GB INTERNAL",
       "price" :"82,600.00",
       "image" : "images/IPHONE 15.jpg"
       },

      {"name": "Nothing Phone 2",
       "description": "(Dark Grey, 256 GB)  (12 GB RAM)",
        "price" :"37,999.00",
        "image" : "images/NOTHING2.jpg"
       },

        {"name": "SAMSUNG S24 ULTRA",
       "description": " 5G AI Smartphone (Titanium Gray, 12GB, 256GB Storage)",
        "price" :"1,29,999.00",
        "image" : "images/S24ULTRA.jpg"
       }
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "SMARTPHONES",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 120, 241, 128),
      ),
      body: ListView(
        children: phoneList.map((phone) {
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
                    child: Image.asset(phone["image"]),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    height: 350,
                  ),
                  Text(
                    phone["name"],
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    phone["description"],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(height: 4),
                  Text(
                    phone["price"],
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
