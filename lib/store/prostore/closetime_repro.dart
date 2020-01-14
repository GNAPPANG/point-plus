import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:point_plus/user/profile_user.dart';

final mali = 'Mali';

class CloseReproPage extends StatefulWidget {
  @override
  _CloseReproPageState createState() => _CloseReproPageState();
}

class _CloseReproPageState extends State<CloseReproPage> {
  void _onDropItemSelected(String newValueSelected) {
  }

  DateTime _dateTime = DateTime.now();

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
                builder: (context) => ProfileUser(),
              ),
            );
          },
        ),
        title: Text(
          'เวลาปิด',
          style: TextStyle(
            fontFamily: 'mali',
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_dateTime == null ? 'ยังไม่มีการเลือกอะไรเลย'
                : _dateTime.toString()),
            RaisedButton(
              child: Text(
                  'เลือกเวลา'
              ),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: _dateTime == null ? DateTime.now() :
                  _dateTime,
                  firstDate: DateTime(2001),
                  lastDate: DateTime(2021),
                ).then((date){
                  setState(() {
                    _dateTime = date;
                  });
                });
              } ,
            ),
//          SizedBox(
//            height: 200,
//            child: CupertinoDatePicker(
//              use24hFormat: true,
//              initialDateTime: _dateTime,
//              mode: CupertinoDatePickerMode.time,
//              onDateTimeChanged: (dateTime){
//                print(dateTime);
//                setState(() {
//                  _dateTime = dateTime;
//
//                });
//              },
//            ),
//          ),

          ],
        ),
      ),
    );
  }
}


