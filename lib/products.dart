import 'package:flutter/material.dart';

class product extends StatelessWidget {
  final List<String> products;
  product(this.products);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map(
            (Element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/food.jpg'),
                  Text(
                    Element,
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
