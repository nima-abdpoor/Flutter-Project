
import 'package:flutter/material.dart';

class ProductPageCreate extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ProductCreatePage();
  }

}
class ProductCreatePage extends State<ProductPageCreate>{
  String _value = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          autofocus: false,
          autocorrect: true,
          onChanged: (String value){
           setState(() {
             _value = value;
           });
        },),
        Text(_value)
      ],
    );
  }
}