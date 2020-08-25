import 'package:flutter/material.dart';
import 'package:helloflutter/Pages/DetailProduct.dart';

class product extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProdcut ;

  product(this.products , {this.deleteProdcut}) {
    print("product constructor");
  }

  @override
  Widget build(BuildContext context) {
    print("product build()");
    return products.length > 0
        ? ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    )
        : Center(
      child: Text('No Products Found, Please add some'),
    );
  }

  Widget _buildProductItem(BuildContext context, int index) {
    String detailbtn = 'Details';
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text(detailbtn),
                onPressed: () =>
                    Navigator.push <bool>(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                DetailProduct(
                                    products[index]['title'],
                                    products[index]['image']))).then(
                        (bool value){
                          if(value){
                           deleteProdcut(index);
                          }
                        }),
              )
            ],
          )
        ],
      ),
    );
  }
}
