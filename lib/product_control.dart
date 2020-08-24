import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget{
  final Function addProduct;
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.red)
      ),
      onPressed: () {
        addProduct('Sweets');
      },
      child: Text(
        'add product',
        textAlign: TextAlign.center,
      ),
    );
  }
}