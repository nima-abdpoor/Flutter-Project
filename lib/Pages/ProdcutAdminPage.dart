import 'package:flutter/material.dart';
import 'package:helloflutter/Pages/Product_Create.dart';
import 'package:helloflutter/Pages/Product_list.dart';

import 'HomePage.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  title: Text('Choose'),
                  automaticallyImplyLeading: false,
                ),
                ListTile(
                  title: Text('All Products'),
                  onTap: () => {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()),
                    )
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.create),
                  text: 'Create Products',
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: 'My Products',
                )
              ],
            ),
            title: Text(
              'Manage Products',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: TabBarView(
            children: <Widget>[ProductCreatePage(), ProductListPage()],
          )),
    );
  }
}