import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:point_plus/join/category_page.dart';
import 'package:point_plus/join/login_page.dart';

final mali = 'Mali';

class ReuserPage extends StatefulWidget {
  @override
  _ReuserPageState createState() => _ReuserPageState();
}

class _ReuserPageState extends State<ReuserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoryPage(),
              ),
            );
          },
        ),
        title: Text(
          'ผู้ใช้ทั่วไป',
          style: TextStyle(
            fontFamily: 'mali',
            color: Colors.black54,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[

          SizedBox(
            height: 60.0,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Image.asset(
                      'assets/images/person.png',
                      width: 150.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'ชื่อ:',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: mali,
                            color: Colors.black,
                          )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'นามสกุล:',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: mali,
                            color: Colors.black,
                          )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'ชื่อผู้ใช้:',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: mali,
                            color: Colors.black,
                          )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'เบอร์:',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: mali,
                            color: Colors.black,
                          )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'วันเกิด:',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: mali,
                            color: Colors.black,
                          )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: 'อีเมล:',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: mali,
                            color: Colors.black,
                          )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'รหัสผ่าน:',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: mali,
                            color: Colors.black,
                          )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'ยืนยันรหัสผ่าน:',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: mali,
                            color: Colors.black,
                          )),
                    ),

                    SizedBox(
                        height: 30
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: RaisedButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                'สมัครสมาชิก',
                                style: TextStyle(
                                  fontFamily: mali,
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                              ),
                              color: Colors.redAccent,
                              elevation: 3.0,
                            ),
                          ),
                          SizedBox(
                              width:16.0
                          ),
                          Expanded(
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => CategoryPage(),
                                ),);
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                'ยกเลิก',
                                style: TextStyle(
                                  fontFamily: mali,
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                              ),
                              color: Colors.redAccent,
                              elevation: 3.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 40.0,
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

