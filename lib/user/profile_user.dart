import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:point_plus/join/category_page.dart';
import 'package:point_plus/join/login_page.dart';
import 'package:point_plus/user/pro/birt_upro.dart';
import 'package:point_plus/user/pro/mail_upro.dart';
import 'package:point_plus/user/pro/password_upro.dart';
import 'package:point_plus/user/pro/phone_upro.dart';
import 'package:point_plus/user/pro/name_upro.dart';
import 'package:point_plus/user/main_page.dart';
import 'package:point_plus/join/plan.dart';
import 'package:point_plus/user/pro/surname_upro.dart';
import 'package:point_plus/user/pro/username_upro.dart';

final mali = 'Mali';

class ProfileUser extends StatefulWidget {
  @override
  _ProfileUserState createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {

  int _gValue;

  final _key = GlobalKey<FormState>();
  var _gender = 1;
  var _genderItemSelected = 'ชาย';

  void _onDropItemSelected(String newValueSelected) {
    setState(() {
      this._genderItemSelected = newValueSelected;
    });
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
                builder: (context) => MainPage(),
              ),
            );
          },
        ),
        title: Text(
          'โปรไฟล์ผู้ใช้',
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
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/person.png',
                      width: 150.0,
                    ),
                    Text(
                      'ID : U23453',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 18.0,
                        fontFamily: 'mali',
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60.0,
                        child: RaisedButton(
                          onPressed: () {
                            print("aaaaa");
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => NameUproPage(),
                  ),);
                          } ,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
//                            Icon(
//                              Icons.supervised_user_circle,
//                              color: Colors.black54,
//                              size: 50,
//                            ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'ชื่อ',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontFamily: 'mali' ,
                                      fontSize: 12.0,
                                    ),
                                  ),

                                  Text(
                                    'มาริน่า',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'mali' ,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),

                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black54,
                                size: 12,
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60.0,
                        child: RaisedButton(
                          onPressed: () {
                            print("bbbbb");
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SurnameUproPage(),
                  ),);
                          } ,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
//                            Icon(
//                              Icons.supervised_user_circle,
//                              color: Colors.black54,
//                              size: 50,
//                            ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'นามสกุล',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontFamily: 'mali' ,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    'เชอร์เบ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'mali' ,
                                      fontSize: 14.0,
                                    ),
                                  ),

                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black54,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60.0,
                        child: RaisedButton(
                          onPressed: () {
                            print("bbbbb");
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => UsernameUproPage(),
                  ),);
                          } ,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
//                            Icon(
//                              Icons.supervised_user_circle,
//                              color: Colors.black54,
//                              size: 50,
//                            ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'ชื่อผู้ใช้',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontFamily: 'mali' ,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    'Mareena',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'mali' ,
                                      fontSize: 14.0,
                                    ),
                                  ),

                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black54,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60.0,
                        child: RaisedButton(
                          onPressed: () {
                            print("ccccc");
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => BirtUproPage(),
                  ),);
                          } ,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'วันเกิด',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontFamily: 'mali' ,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    '12/12/1996',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'mali' ,
                                      fontSize: 12.0,
                                    ),
                                  ),

                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black54,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60.0,
                        child: RaisedButton(
                          onPressed: () {
                            print("ccccc");
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => PhoneUproPage(),
                  ),);
                          } ,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
//                            Icon(
//                              Icons.supervised_user_circle,
//                              color: Colors.black54,
//                              size: 50,
//                            ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'เบอร์โทรศัพท์',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontFamily: 'mali' ,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    '0899376458',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'mali' ,
                                      fontSize: 12.0,
                                    ),
                                  ),

                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black54,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60.0,
                        child: RaisedButton(
                          onPressed: () {
                            print("ccccc");
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MailUproPage(),
                  ),);
                          } ,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
//
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'อีเมล',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontFamily: 'mali' ,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    'mareena21@gmail.com',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'mali' ,
                                      fontSize: 14.0,
                                    ),
                                  ),

                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black54,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60.0,
                        child: RaisedButton(
                          onPressed: () {
                            print("ccccc");
                  Navigator.push(context, MaterialPageRoute(
                              builder: (context) => PasswordUproPage(),
                            ),);
                          } ,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
//                            Icon(
//                              Icons.supervised_user_circle,
//                              color: Colors.black54,
//                              size: 50,
//                            ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'รหัสผ่าน',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontFamily: 'mali' ,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    'เปลี่ยนรหัสผ่าน',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'mali' ,
                                      fontSize: 12.0,
                                    ),
                                  ),

                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black54,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),


                    SizedBox(
                      height: 12.0,
                    ),
                    InkWell(
                      onTap: (){
                        print("ssss");
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => PlanPage(),
                        ),);
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Icon(
                              Icons.library_books,
                              color: Colors.black54,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'ข้อตกลงและเงื่อนไข & นโยบาย',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 12.0,
                                fontFamily: 'mali',

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                            child: RaisedButton(
                              onPressed: () {
                                print('${_gValue}');
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                'บันทึก',
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
                          SizedBox(width: 16.0),
                          Expanded(
                            child: RaisedButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                'ออกจากระบบ',
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
                      height: 20.0,
                    ),
//                    Center(
//                      child: Row(
//                        children: <Widget>[
//                          RaisedButton(
//                            color: Colors.lightGreen,
//                            child: Container(
//                              alignment: Alignment.center,
//                              width: MediaQuery.of(context).size.width,
//                              child: Text(
//                                'Save',
//                                style: TextStyle(
//                                  color: Colors.black45,
//                                  fontSize: 18.0,
//                                  fontFamily: 'mali',
//                                ),
//                              ),
//                            ),
//                            onPressed: () {
//                              if (_key.currentState.validate()) {
//                                print('submit');
//                              }
//                            },
//                          ),
//
//                        ],
//                      ),
//                    )
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

//----------------------------------

//Widget form({key, w, gender, genderItem}) {
//  return Form(
//    key: key,
//    child: Column(
//      children: <Widget>[
//        // username
//        TextFormField(
//          decoration: InputDecoration(
//            hintText: 'ชื่อผู้ใช้',
//            labelText: 'ชื่อผู้ใช้',
//            border: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(24.0),
//            ),
//          ),
//          validator: (value) {
//            if (value.isEmpty) {
//              return 'กรุณากรอกชื่อผู้ใช้';
//            } else if (value.length <= 6) {
//              return 'กรอกชื่อผู้ใช้อย่างน้อย 6 ตัวอักษร';
//            } else {
//              return null;
//            }
//          },
//        ),
//        SizedBox(
//          height: 12.0,
//        ),
//
//        TextFormField(
//          decoration: InputDecoration(
//            hintText: 'อีเมล',
//            labelText: 'อีเมล',
//            border: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(24.0),
//            ),
//          ),
//          validator: (value) {
//            if (value.isEmpty) {
//              return 'กรุณากรอกอีเมล';
//            } else if (value.length <= 6) {
//              return 'กรอกชิีเมลให้ถูกต้อง';
//            } else {
//              return null;
//            }
//          },
//        ),
//        SizedBox(
//          height: 12.0,
//        ),
//
//        TextFormField(
//          decoration: InputDecoration(
//            hintText: 'เบอร์โทรศัพท์',
//            labelText: 'เบอร์โทรศัพท์',
//            border: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(24.0),
//            ),
//          ),
//          validator: (value) {
//            if (value.isEmpty) {
//              return 'กรุณากรอกเบอร์โทร';
//            } else if (value.length <= 6) {
//              return 'กรอกตัวเลขให้ครบ 10 ตัว';
//            } else {
//              return null;
//            }
//          },
//        ),
//        SizedBox(
//          height: 12.0,
//        ),
//
//        DropdownButton<String>(
//          isExpanded: true,
//          items: gender.map((String dropDownStringItem) {
//            return DropdownMenuItem<String>(
//              value: dropDownStringItem,
//              child: Center(
//                child: Text(
//                  dropDownStringItem,
//                ),
//              ),
//            );
//          }).toList(),
//          onChanged: (String newValueSelected) {
//            _onDropItemSelected(newValueSelected);
//          },
//          value: genderItem,
//        ),
//
//
////        TextFormField(
////          decoration: InputDecoration(
////            hintText: 'เพศ',
////            labelText: 'ชื่อผู้ใช้',
////            border: OutlineInputBorder(
////              borderRadius: BorderRadius.circular(24.0),
////            ),
////          ),
////          validator: (value) {
////            if (value.isEmpty) {
////              return 'กรุณากรอกชื่อผู้ัใช้';
////            } else if (value.length <= 6) {
////              return 'กรอกชื่อผู้ใช้อย่างน้อย 6 ตัวอักษร';
////            } else {
////              return null;
////            }
////          },
////        ),
//        SizedBox(
//          height: 12.0,
//        ),
//
//        TextFormField(
//          decoration: InputDecoration(
//            hintText: 'รหัสผ่าน',
//            labelText: 'รหัสผ่าน',
//            border: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(24.0),
//            ),
//          ),
//          validator: (value) {
//            if (value.isEmpty) {
//              return 'กรุณากรอกรหัสผ่าน';
//            } else if (value.length <= 9) {
//              return 'กรอกรหัสผ่านอย่างน้อย 8 ตัว';
//            } else {
//              return null;
//            }
//          },
//        ),
//        SizedBox(
//          height: 12.0,
//        ),
//        Center(
//          child: RaisedButton(
//            color: Colors.lightGreen,
//            child: Container(
//              alignment: Alignment.center,
//              width: w,
//              child: Text(
//                'save',
//              ),
//            ),
//            onPressed: () {
//              if (key.currentState.validate()) {
//                print('submit');
//              }
//            },
//          ),
//        )
//      ],
//    ),
//  );
//}
