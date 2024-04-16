import 'package:flutter/material.dart';

class MyTv extends StatelessWidget {
  const MyTv({super.key});

  @override
  Widget build(BuildContext context) {
     List<Map<String, dynamic>> tvList = [
      {"name": "Sony Bravia",
       "description": "164 cm (65 inches) 4K Ultra HD Smart LED Google TV KD-65X74L (Black)",
       "price" :"75,999.00",
       "image" : "images/SONY TV.jpg"
       },

      {"name": "Samsung Crystal Ismart",
       "description": "(43 inches) Crystal iSmart 4K Ultra HD Smart LED TV UA43CUE60AKLXL (Black)",
        "price" :"29,990.00",
        "image" : "images/SAMSUNG TV.jpg"
       },

       
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "TELIVISIONS",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 120, 241, 128),
      ),
      body: ListView(
        children: tvList.map((tv) {
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
                    child: Image.asset(tv["image"]),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    height: 350,
                  ),
                  Text(
                    tv["name"],
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    tv["description"],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(height: 4),
                  Text(
                    tv["price"],
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