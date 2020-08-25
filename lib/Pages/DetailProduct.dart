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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/food.jpg'),
            Container(
              child: RaisedButton(
                padding: EdgeInsets.all(10.0),
                child: Text('Back'),
                color: Theme.of(context).accentColor,
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Detail'),
              color: Theme.of(context).accentColor,
            )
          ],
        ));
  }
}
