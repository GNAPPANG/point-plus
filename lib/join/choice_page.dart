import 'package:flutter/material.dart';
import 'package:point_plus/join/home.dart';
import 'package:point_plus/store/homestore.dart';
import 'package:point_plus/user/main_page.dart';

class ChoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('user'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomePage(),
              ),);
            },
          ),

          RaisedButton(
            child: Text('store'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomestorePage(),
              ),);
            },
          ),
        ],
      ),
    );
  }
}
