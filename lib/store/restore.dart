import 'package:flutter/material.dart';
import 'package:point_plus/join/category_page.dart';
import 'package:point_plus/join/login_page.dart';

final mali = 'Mali';
final kalam = 'Kalam';

class RestorePage extends StatefulWidget {
  @override
  _RestorePageState createState() => _RestorePageState();
}

class _RestorePageState extends State<RestorePage> {
  var _provice = ['กาญจนบุรี', 'กรุงเทพมหานคร', 'นครปฐม'];
  var _proviceItemSelected = 'กรุงเทพมหานคร';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
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
          'ผู้ประกอบการร้านค้า',
          style: TextStyle(
            fontFamily: 'mali',
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[

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
                    Container(
                        width: 180.0,
                        height: 180.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/logostore.png'),
                            )
                        )),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: 'อีเมล :',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: mali,
                            color: Colors.black,
                          )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'รหัสผ่าน :',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: mali,
                            color: Colors.black,
                          )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'ยืนยันรหัสผ่าน :',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: mali,
                            color: Colors.black,
                          )),
                    ),
                    TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                          labelText: 'ชื่อร้าน :',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: mali,
                            color: Colors.black,
                          )),
                    ),
                    TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                          labelText: 'ติดต่อ :',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: mali,
                            color: Colors.black,
                          )),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'เวลาเปิด :',
                                labelStyle: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: mali,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'เวลาปิด :',
                                labelStyle: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: mali,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                          labelText: 'ที่อยู่ :',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                            fontFamily: mali,
                            color: Colors.black,
                          )),
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      items: _provice.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Center(
                            child: Text(
                              dropDownStringItem,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String newValueSelected) {
                        _onDropItemSelected(newValueSelected);
                      },
                      value: _proviceItemSelected,
                    ),


                    SizedBox(
                      height: 32.0,
                    ),

                    SizedBox(
                      height : 32.0,
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
                              onPressed: () {},
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

  void _onDropItemSelected(String newValueSelected) {
    setState(() {
      this._proviceItemSelected = newValueSelected;
    });



  }
}

