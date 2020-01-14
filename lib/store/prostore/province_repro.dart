import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:point_plus/store/profile_store.dart';
import 'package:point_plus/user/profile_user.dart';

final mali = 'Mali';

class ProvinceReproPage extends StatefulWidget {
  @override
  _ProvinceReproPageState createState() => _ProvinceReproPageState();
}

class _ProvinceReproPageState extends State<ProvinceReproPage> {
  void _onDropItemSelected(String newValueSelected) {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileStorePage(),
              ),
            );
          },
        ),
        title: Text(
          'จังหวัด',
          style: TextStyle(
            fontFamily: 'mali',
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      //maxLength: 20,
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: 'จังหวัด',
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


