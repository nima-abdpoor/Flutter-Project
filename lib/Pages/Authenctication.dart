import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: RaisedButton(
        child: Text('Login'),
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (BuildContext contex) => HomePage(),
          ),);
        },
      )),
    );
  }
}
