import 'package:flutter/material.dart';

class product extends StatelessWidget {
  final List<String> products;
  product(this.products){
    print("product constructor");
  }

  @override
  Widget build(BuildContext context) {
    print("product build()");
    return Column(
      children: products
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  //Image.asset('assets/food.jpg'),
                  Text(
                    element,
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
