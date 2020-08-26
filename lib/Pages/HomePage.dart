
import 'package:flutter/material.dart';

import '../product_manager.dart';

class HomePage extends StatelessWidget{
  String s = 'first app';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(
         s,
         textAlign: TextAlign.center,
         style: TextStyle(fontWeight: FontWeight.bold),
       ),
       centerTitle: true,
     ),
     body: ProductManager(decription  : 'Food tester'),
   );
  }
}
