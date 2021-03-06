

import 'package:flutter/material.dart';
import 'package:point_plus/join/category_page.dart';
import 'package:point_plus/join/confirm_mail.dart';
import 'package:point_plus/join/home.dart';
import 'package:point_plus/join/login_page.dart';
import 'package:point_plus/user/main_page.dart';

import 'choice_page.dart';

final kalam = 'Kalam';
final mali = 'Mali';


class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,  color: Colors.black54),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),);
          },
        ),
        title: Text('ลืมรหัสผ่าน',
          style: TextStyle(
            fontFamily: 'mali' ,
            color: Colors.black54,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),

            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 32.0,
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      //height: 200.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 10.0,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 24.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 18.0,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: mali,
                                    fontSize: 14.0,
                                  ),
                                  hintText: 'กรุณากรอกอีเมล',
                                  labelStyle: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: mali,
                                    color: Colors.redAccent[100],
                                  ),
                                  icon: Icon(
                                    Icons.mail,
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 32.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 70
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: RaisedButton(
                              onPressed: () {
                                print("gggg");
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ConfirmMailPage(),
                                ),);
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Text(
                                'รีเซ็ตรหัสผ่าน',
                                style: TextStyle(
                                  fontFamily: mali,
                                  fontSize: 12.0,
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
                          SizedBox(width: 16.0),

                        ],
                      ),
                    ),
                    SizedBox(
                        height: 16
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
