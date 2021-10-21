import 'package:flutter/material.dart';
import 'package:hci_layout/main.dart';
import 'package:hci_layout/views/schedule.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
//import './transaction.dart';
//import 'package:test/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BookPage(),
    );
  }
}

class BookPage extends StatefulWidget {
  @override
  _HomeCalendarPageState createState() => _HomeCalendarPageState();
}

class _HomeCalendarPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/backgrond.png"), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.blue[900],
                  child: SfDateRangePicker(
                    view: DateRangePickerView.month,
                    monthViewSettings:
                        DateRangePickerMonthViewSettings(blackoutDates: [
                      DateTime(2021, 10, 25),
                      DateTime(2021, 10, 28)
                    ], specialDates: [
                      DateTime(2021, 10, 22),
                      DateTime(2021, 10, 23),
                      DateTime(2021, 10, 26),
                      DateTime(2021, 10, 27),
                      DateTime(2021, 10, 29),
                      DateTime(2021, 10, 30),
                      DateTime(2021, 11, 1),
                      DateTime(2021, 11, 2)
                    ], showTrailingAndLeadingDates: true),
                    monthCellStyle: DateRangePickerMonthCellStyle(
                      blackoutDatesDecoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(
                              color: const Color(0xFFF44436), width: 1),
                          shape: BoxShape.circle),
                      // weekendDatesDecoration: BoxDecoration(
                      //     color:  Colors.white,
                      //     border: Border.all(
                      //         color: const Color(0xFFB6B6B6), width: 1),
                      //     shape: BoxShape.circle),
                      specialDatesDecoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(
                              color: const Color(0xFF2B732F), width: 1),
                          shape: BoxShape.circle),
                      blackoutDateTextStyle: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.lineThrough),
                      specialDatesTextStyle:
                          const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                /*Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(
                      'Khung giờ thích hợp:',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    new Text(
                      '13:00 - 19:00',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),*/
                schedule_check()

                // schedule_check_error(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class schedule_check extends StatelessWidget {
  const schedule_check({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Số buổi tập đã đặt : 11 / 15 buổi tập",
            style: TextStyle(color: Colors.green, fontSize: 15)),
        Card(
          color: Color(0x222242),
          child: Row(children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              padding: EdgeInsets.all(20),
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.cancel_outlined,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      '7:00 - 10:30',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
        Card(
          color: Color(0x222242),
          child: Row(children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              padding: EdgeInsets.all(20),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.check_box_outline_blank,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  '13:30 - 3:30',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ],
            )
          ]),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          color: Color(0x222242),
          child: Row(children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              padding: EdgeInsets.all(20),
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.check_box_outlined,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      '16:00 - 18:30',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
        Card(
          color: Color(0x222242),
          child: Row(children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              padding: EdgeInsets.all(20),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.check_box_outlined,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  '19:00 - 22:00',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ],
            )
          ]),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          color: Color(0xff222242),
          child: Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20, left: 50),
              child: Container(
                width: 300,
                /*margin: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 60,
                ),*/
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.green,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                child: Text(
                  'Tổng cộng: 1 triệu 100 ngàn',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new SizedBox(
                  width: 120.0,
                  height: 70.0,
                  child: RaisedButton(
                    child: Text(
                      'Xác nhận',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    color: Colors.green,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeCalendarPage()));
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class schedule_check_error extends StatelessWidget {
  const schedule_check_error({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          color: Color(0x222242),
          child: Row(children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              padding: EdgeInsets.all(20),
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.cancel_outlined,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      '7:00 - 10:30',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
        Card(
          color: Color(0x222242),
          child: Row(children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              padding: EdgeInsets.all(20),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.cancel_outlined,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  '13:30 - 3:30',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ],
            )
          ]),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          color: Color(0x222242),
          child: Row(children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              padding: EdgeInsets.all(20),
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.cancel_outlined,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      '16:00 - 18:30',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
        Card(
          color: Color(0x222242),
          child: Row(children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              padding: EdgeInsets.all(20),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.cancel_outlined,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  '19:00 - 22:00',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ],
            )
          ]),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          color: Color(0xff222242),
          child: Row(children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 80,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.green,
                  width: 2,
                ),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
              child: Text(
                'Tổng cộng: 1 triệu 100 ngàn',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new SizedBox(
                  width: 120.0,
                  height: 70.0,
                  child: RaisedButton(
                    child: Text(
                      'Xác nhận',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    color: Colors.green,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeCalendarPage()));
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
