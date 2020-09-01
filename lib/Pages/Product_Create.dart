import 'package:flutter/material.dart';

class ProductPageCreate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductCreatePage();
  }
}

class ProductCreatePage extends State<ProductPageCreate> {
  String value;
  String description;
  double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          TextField(
            style: TextStyle(
                fontSize: 20,
              fontStyle: FontStyle.italic
            ),
            decoration: InputDecoration(
              icon: Icon(Icons.add),
              labelText: 'Product title',
            ),
            autofocus: false,
            autocorrect: true,
            maxLines: 1,
            onChanged: (String value) {
              setState(() {
                value = value;
              });
            },
          ),
          TextField(
            style: TextStyle(
                fontStyle: FontStyle.normal,
              fontSize: 20
            ),
            decoration: InputDecoration(
              labelText: 'Description',
              icon: Icon(Icons.description)
            ),
            autofocus: false,
            autocorrect: true,
            maxLines: 3,
            onChanged: (String value) {
              setState(() {
                description = value;
              });
            },
          ),
          TextField(
            style: TextStyle(
                fontSize: 20
            ),
            decoration: InputDecoration(
              labelText: 'Price',
                icon: Icon(Icons.attach_money)
            ),
            autofocus: false,
            autocorrect: true,
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                price = value as double;
              });
            },
          )
        ],
      ),
    );
  }
}
