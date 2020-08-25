import 'package:flutter/material.dart';
import 'package:helloflutter/product_control.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  String decription;

  ProductManager({this.decription = 'Food'}) {
    print("productManager constructor");
  }

  @override
  State<StatefulWidget> createState() {
    print("productManager CreateState");
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    //_products.add(widget.decription);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('productManager build');
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(2.0), child: ProductControl(_addProduct)),
        Expanded(
          child: product(_products , deleteProdcut: _deleteProduct),
        )
      ],
    );
  }

  _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(
        product,
      );
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }
}
