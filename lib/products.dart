import 'package:flutter/material.dart';

class product extends StatelessWidget {
  final List<String> products;
  product(this.products){
    print("product constructor");
  }

  @override
  Widget build(BuildContext context) {
    print("product build()");
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(
            products[index],
          ),
        ],
      ),
    );
  }
}
