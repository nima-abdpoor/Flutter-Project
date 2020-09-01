
import 'package:flutter/material.dart';

class ProductPageCreate extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ProductCreatePage();
  }

}
class ProductCreatePage extends State<ProductPageCreate>{
  String value;
  String description;
  double price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          autofocus: false,
          autocorrect: true,
          maxLines: 1,
          onChanged: (String value){
            setState(() {
              value = value;
            });
          },),
        TextField(
          autofocus: false,
          autocorrect: true,
          maxLines: 4,
          onChanged: (String value){
           setState(() {
             description = value;
           });
        },),
        TextField(
          autofocus: false,
          autocorrect: true,
          keyboardType: TextInputType.number,
          onChanged: (String value){
            setState(() {
              price = value as double;
            });
          },)
      ],
    );
  }
}