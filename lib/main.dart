import 'package:flutter/material.dart';
import 'package:state_management/widgets/btspkr.dart';
import 'package:state_management/widgets/headphone.dart';
import 'package:state_management/widgets/laptops.dart';
import 'package:state_management/widgets/productList.dart';
import 'package:state_management/widgets/smartPhones.dart';
import 'package:state_management/widgets/tv.dart';
import 'package:state_management/widgets/watches.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductList()
    );
  }
}