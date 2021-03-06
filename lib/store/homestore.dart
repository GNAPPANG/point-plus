import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:point_plus/join/category_page.dart';
import 'package:point_plus/store/history_store.dart';
import 'package:point_plus/join/login_page.dart';
import 'package:point_plus/store/main_store.dart';
import 'package:point_plus/store/noti_store.dart';
import 'package:point_plus/store/profile_store.dart';
import 'package:point_plus/user/qr_code.dart';
import 'package:point_plus/store/scan_store.dart';
import 'package:point_plus/user/transfer_point.dart';
import 'package:point_plus/user/my_point.dart';

import '../user/qr_code.dart';
import '../user/main_page.dart';
import '../user/my_point.dart';
import '../user/notification_page.dart';

final mali = 'Mali';

class HomestorePage extends StatefulWidget {
  @override
  _HomestorePageState createState() => _HomestorePageState();
}

class _HomestorePageState extends State<HomestorePage> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  int _selectedItem = 0;
  final _pageOption = [
    MainStorePage(),
    HistoryStorePage(),
    ScanStorePage(),
    NotiStorePage(),
    ProfileStorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: Colors.redAccent,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.white,
        items: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.home,
                size: 35,
                color: Colors.black54,
              ),
              Text(
                'หน้าหลัก',
                style: TextStyle(
                  fontFamily: mali,
                  fontSize: 10.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                  Icons.access_time,
                  size: 35,
                  color: Colors.black54
              ),
              Text(
                'ประวัติ',
                style: TextStyle(
                  fontFamily: mali,
                  fontSize: 10.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                  Icons.center_focus_weak,
                  size: 35,
                  color: Colors.black54
              ),
              Text(
                'สแกน',
                style: TextStyle(
                  fontFamily: mali,
                  fontSize: 10.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                  Icons.textsms,
                  size: 35,
                  color: Colors.black54
              ),
              Text(
                'แจ้งเตือน',
                style: TextStyle(
                  fontFamily: mali,
                  fontSize: 10.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                  Icons.person,
                  size: 35,
                  color: Colors.black54
              ),
              Text(
                'โปรไฟล์',
                style: TextStyle(
                  fontFamily: mali,
                  fontSize: 10.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
        onTap: (int index) {
          debugPrint("CurrentIndex is $index");
          _pageOption[_selectedItem];
          setState(() {
            _selectedItem = index;
          });
        },
      ),
      body: _pageOption[_selectedItem],
    );
  }
}

//----------------------------------
