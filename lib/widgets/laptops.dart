import 'package:flutter/material.dart';

class MyLap extends StatelessWidget {
  const MyLap({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> lapList = [
      {"name": "Apple MacBook Air",
       "description": "13.3-inch/33.74 cm Retina Display, 8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD Camera, Touch ID. Works with iPhone/iPad; Gold",
       "price" :"76,999.00",
       "image" : "images/APPLE MAC.jpg"
       },

      {
        "name": "ASUS Vivobook 16",
       "description": "Intel Core i9-13900H 13th Gen, 16 (40.64 cm) FHD+, Thin & Light Laptop (16GB/512GB SSD",
        "price" :"79,990.00",
        "image" : "images/ASUS VIVOBOOK.jpg"
       },

        {"name": "HP OMEN Gaming Laptop",
       "description": "13th Gen Intel Core i5-13420H, 6GB NVIDIA RTX 4050 GPU(120W), 16.1 (40.9 cm) IPS 144Hz,16GB DDR5,512GB SSD",
        "price" :"90,990.00",
        "image" : "images/HP OMEN.jpg"
       }
    ];
     return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "LAPTOPS",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 120, 241, 128),
      ),
      body: ListView(
        children: lapList.map((lap) {
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
                    child: Image.asset(lap["image"]),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    height: 350,
                  ),
                  Text(
                    lap["name"],
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    lap["description"],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(height: 4),
                  Text(
                    lap["price"],
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