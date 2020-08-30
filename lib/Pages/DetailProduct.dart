import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  final String title;

  final String imageUrl;

  DetailProduct(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:() {
        print('back button pressed');
        Navigator.pop(context,false);
        return Future.value(false);
      },
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(imageUrl),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(title),
                ),
                Container(
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)
                      ),
                    padding: EdgeInsets.all(0.05),
                    child: Text('Delete'),
                    color: Colors.red,
                    onPressed: () {
                        _ShowWarningDialog(context);
                    },
                  ),
                ),
              ],
            )));
  }

  void _ShowWarningDialog(BuildContext context) {
    showDialog(context: context,
      builder: (BuildContext context){
      return AlertDialog(
        title: Text('Are You Sure?'),
        content: Text('this action can not be done!'),
        actions: <Widget>[
          FlatButton(
            child : Text('Discard'),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          FlatButton(
            child: Text('Delete'),
            onPressed: (){
              Navigator.pop(context);
              Navigator.pop(context,true);
            },
          )
        ],
      );
      }
    );
  }
}
