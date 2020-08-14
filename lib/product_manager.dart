import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  String decription;
  ProductManager({this.decription = 'Food'} );

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];
  @override
  void initState() {
    print('initstate');
    _products.add(widget.decription);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print('build first');
    return Column(children: [
      Container(
      margin: EdgeInsets.all(2.0),
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {
          setState(() {
            _products.add(
              'advance food tester',
            );
          });
        },
        child: Text(
          'add product',
          textAlign: TextAlign.center,
        ),
      ),
    ),
    product(_products)
    ],);
  }
}