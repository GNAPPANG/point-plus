import 'package:flutter/material.dart';
import 'package:point_plus/join/category_page.dart';
import 'package:point_plus/join/login_page.dart';

final mali = 'Mali';
final kalam = 'Kalam';

class ScanStorePage extends StatefulWidget {
  @override
  _ScanStorePageState createState() => _ScanStorePageState();
}

class _ScanStorePageState extends State<ScanStorePage> {


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
                    h: MediaQuery
                        .of(context)
                        .size
                        .height / 7,
                    c: context,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Image.asset(
                    'assets/images/scan.png',
                    width: 300.0,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    'สแกนเพื่อให้แต้ม',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 22.0,
                      fontFamily: 'mali',
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
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

//----------------------------------


Widget appBars({h, c}) {
  return Container(
    height: h,
    color: Colors.redAccent,
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'สแกนคิวอาร์โค้ด',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 22.0,
              fontFamily: 'mali',
            ),
          ),
          SizedBox(
              width: 20
          ),
        ],
      ),
    ),
  );
}