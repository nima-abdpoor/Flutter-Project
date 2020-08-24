import 'package:flutter/material.dart';

class product extends StatelessWidget {
  final List<String> products;
  product(this.products){
    print("product constructor");
  }

  @override
  Widget build(BuildContext context) {
    print("product build()");
    return products.length >0 ? ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    ) : Center(child: Text('No Products Found, Please add some'),);
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
