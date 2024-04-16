import 'package:flutter/material.dart';

class MySpeaker extends StatelessWidget {
  const MySpeaker({super.key});

  @override
  Widget build(BuildContext context) {
     List<Map<String, dynamic>> speakerList = [
      {"name": "JBL Charge 5",
       "description": "Wireless Portable Bluetooth Speaker Pro Sound, 20 Hrs Playtime",
       "price" :"14,899.00",
       "image" : "images/JBL SPEAKER.jpg"
       },

      {"name": "Marshall Emberton II",
       "description": "20 W Wireless Bluetooth Portable Outdoor Speaker (Black & Brass)",
        "price" :"17,499.00",
        "image" : "images/MARSHALL.jpg"
       },

        
    ];
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "BT-SPEAKERS",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 120, 241, 128),
      ),
      body: ListView(
        children: speakerList.map((speaker) {
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
                    child: Image.asset(speaker["image"]),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    height: 350,
                  ),
                  Text(
                    speaker["name"],
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    speaker["description"],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(height: 4),
                  Text(
                    speaker["price"],
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