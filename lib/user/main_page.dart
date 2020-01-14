import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:point_plus/join/category_page.dart';
import 'package:point_plus/user/profile_user.dart';
import 'package:point_plus/user/search_page.dart';

final mali = 'Mali';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  appBars(
                    h: MediaQuery.of(context).size.height / 7,
                    c: context,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(

                      horizontal: 24,
                      vertical: 30.0,
                    ),
                    height: MediaQuery.of(context).size.height * 0.40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(height: 100,),
                        Image.asset('assets/images/12.jpg'),
                        SizedBox(width: 20,),
                        Image.asset('assets/images/11.jpg'),
                        SizedBox(width: 20,),
                        Image.asset('assets/images/13.jpg'),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                    height: MediaQuery.of(context).size.height * 0.38,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Image.asset('assets/images/01.jpg'),
                          SizedBox(width: 20,),
                          Image.asset('assets/images/02.jpg'),
                          SizedBox(width: 20,),
                          Image.asset('assets/images/03.jpg'),
                          SizedBox(width: 20,),
                          Image.asset('assets/images/04.jpg'),
                          SizedBox(width: 20,),
                          Image.asset('assets/images/05.jpg'),
                          SizedBox(width: 20,),
                        ],
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget appBars({h, c}) {
  return Container(
    height: h,
    color: Colors.redAccent,
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              color: Colors.grey[200],
              onPressed: () {
                print('tap to search page');
                Navigator.push(
                    c, MaterialPageRoute(builder: (c) => SearchPage()));
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'ค้นหา',
                    style: TextStyle(
                      color: Colors.black54,
                      fontFamily: mali,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
          IconButton(
            icon: Icon(Icons.supervised_user_circle),
            iconSize: 50.0,
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  c, MaterialPageRoute(builder: (c) => ProfileUser()));
            },
          ),
        ],
      ),
    ),
  );
}
