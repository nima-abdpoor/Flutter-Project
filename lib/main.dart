

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:helloflutter/Pages/HomePage.dart';
import 'package:helloflutter/product_manager.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
          accentColor: Colors.deepPurple
      ),
        home: HomePage());
  }
}
