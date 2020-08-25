import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  final String title;

  final String imageUrl;

  DetailProduct(this.title, this.imageUrl);

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
            ),
            Container(
              child: RaisedButton(
                padding: EdgeInsets.all( 0.05),
                child: Text('Delete'),
                color: Colors.red,
                onPressed: () => Navigator.pop(context, true),
              ),
            ),
          ],
        ));
  }
}
