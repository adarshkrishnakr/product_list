import 'package:flutter/material.dart';

class MyWatch extends StatelessWidget {
  const MyWatch({super.key});

  @override
  Widget build(BuildContext context) {
     List<Map<String, dynamic>> watchList = [
      {"name": "Noise ColorFit Ultra 3",
       "description": "Bluetooth Calling Smart Watch with Biggest 1.96 AMOLED Display",
       "price" :"2,999.00",
       "image" : "images/NOISE.jpg"
       },

      {"name": "Samsung Galaxy Watch4",
       "description": " Bluetooth(4.0 cm, Black, Compatible with Android only)",
        "price" :"10,999.00",
        "image" : "images/SAMSUNG WATCH.jpg"
       },

        
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "SMARTWATCHES",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 120, 241, 128),
      ),
      body: ListView(
        children: watchList.map((watch) {
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
                    child: Image.asset(watch["image"]),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    height: 350,
                  ),
                  Text(
                    watch["name"],
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    watch["description"],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(height: 4),
                  Text(
                    watch["price"],
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