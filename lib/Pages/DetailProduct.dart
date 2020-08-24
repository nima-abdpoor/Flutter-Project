import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  String title = 'Details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Back'),
              onPressed: () => Navigator.pop(context),
            ),
            Text('Detail')
          ],
        ));
  }
}
