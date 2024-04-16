import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:state_management/widgets/btspkr.dart';
import 'package:state_management/widgets/headphone.dart';
import 'package:state_management/widgets/laptops.dart';
import 'package:state_management/widgets/smartPhones.dart';
import 'package:state_management/widgets/tv.dart';
import 'package:state_management/widgets/watches.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> productList = [
      {
        'category':"SMARTPHONE",
        'icon' : Icons.smartphone,
        'navigate': MyPhone(),
      },

      {
         "category":"LAPTOP",
         'icon' : Icons.laptop,
          'navigate': MyLap(),

      },

       {
         "category":"HEADPHONE",
         'icon' : Icons.headphones,
          'navigate': MyHeadPhone(),
      },

       {
         "category":"SMARTWATCH",
         'icon' : Icons.watch,
          'navigate': MyWatch(),
      },

       {
         "category":"TELIVISION",
         'icon' : Icons.tv,
          'navigate': MyTv(),
      },

       {
         "category":"BT-SPEAKER",
         'icon' : Icons.speaker,
          'navigate': MySpeaker(),
      },

     




    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 33, 33),
      appBar: AppBar(
        leading: Icon(Icons.home,color: Colors.green,),
        actions: [
          Icon(Icons.search,color: Colors.green,),
           Icon(Icons.more_vert,color: Colors.green,),
        ],
        title: Text("PRODUCT LIST",style: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold
          
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      

      body: Padding(
        padding: EdgeInsets.only(top: 50),
        
        child: ListView(
          children: productList.map((products) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.black,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(products['category']),
                      subtitle: Text("Click to see more"),
                      textColor: Colors.green,
                      leading: Icon(products['icon']),
                      iconColor: Colors.green,
                      trailing: Icon(Icons.more_horiz),
                         onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => products['navigate']),
                      );
                         }
                     
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}