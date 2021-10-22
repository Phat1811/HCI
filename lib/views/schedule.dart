import 'package:flutter/material.dart';
import 'package:hci_layout/views/joinlivestream.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class HomeCalendarPage extends StatefulWidget {
  @override
  _HomeCalendarPageState createState() => _HomeCalendarPageState();
}

class _HomeCalendarPageState extends State<HomeCalendarPage> {
  //late CalendarController _controller;
  /*@override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/backgrond.png"), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.indigo[800],
                child: SfDateRangePicker(
                  view: DateRangePickerView.month,
                  monthViewSettings:
                      DateRangePickerMonthViewSettings(specialDates: [
                    DateTime(2021, 10, 25),
                  ], showTrailingAndLeadingDates: true),
                  monthCellStyle: DateRangePickerMonthCellStyle(
                    blackoutDatesDecoration: BoxDecoration(
                        color: Colors.green,
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
                    specialDatesTextStyle: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              /*TableCalendar(
                  initialCalendarFormat: CalendarFormat.month,
                  calendarStyle: CalendarStyle(
                      todayColor: Colors.red[400],
                      selectedColor: Theme.of(context).primaryColor,
                      todayStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          color: Colors.white)),
                  headerStyle: HeaderStyle(
                    centerHeaderTitle: true,
                    formatButtonDecoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    formatButtonTextStyle: TextStyle(color: Colors.white),
                    formatButtonShowsNext: false,
                  ),
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  builders: CalendarBuilders(
                    selectedDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(5.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Colors.white),
                        )),
                    todayDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(5.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.red[400],
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  calendarController: _controller,
                ),*/
              SizedBox(height: 10),
              time_day2()
            ],
          ),
        ),
      ),
    );
  }
}

class time_day1 extends StatelessWidget {
  const time_day1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Card(
              color: Color(0xff222242),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LiveStream()));
                },
                child: Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '13:00 - 15:00',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Lịch tập với PT Đức Đặng',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Bài tập: cơ tay - cardio',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Ngày tập : 25/10/2021",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      new SizedBox(
                        width: 120.0,
                        height: 30.0,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LiveStream()));
                          },
                          child: Text("Tham gia"),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Color(0xff222242),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LiveStream()));
                },
                child: Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '15:00 - 19:00',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Lịch tập với PT Đức Đặng',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Bài tập: cơ tay - cardio',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Ngày tập : 25/10/2021",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      new SizedBox(
                        width: 120.0,
                        height: 30.0,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LiveStream()));
                          },
                          child: Text("Tham gia"),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class time_day2 extends StatelessWidget {
  const time_day2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Card(
            color: Color(0xff222242),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LiveStream()));
              },
              child: Row(children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '13:00 - 15:00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lịch tập với PT Đức Đặng',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Bài tập: Yoga - cơ liên sườn',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Ngày tập : 26/10/2021",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    new SizedBox(
                      width: 120.0,
                      height: 30.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LiveStream()));
                        },
                        child: Text("Tham gia"),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ),
          SizedBox(height: 10),
          Card(
            color: Color(0xff222242),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LiveStream()));
              },
              child: Row(children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '16:00 - 22:00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lịch tập với PT Đức Đặng',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Bài tập: bụng - chân',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Ngày tập : 26/10/2021",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    new SizedBox(
                      width: 120.0,
                      height: 30.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LiveStream()));
                        },
                        child: Text("Tham gia"),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class time_day3 extends StatelessWidget {
  const time_day3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Card(
            color: Color(0xff222242),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LiveStream()));
              },
              child: Row(children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '13:00 - 15:00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lịch tập với PT Đức Đặng',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Bài tập: chân - vai',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Ngày tập : 26/10/2021",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    new SizedBox(
                      width: 120.0,
                      height: 30.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LiveStream()));
                        },
                        child: Text("Tham gia"),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ),
          SizedBox(height: 10),
          Card(
            color: Color(0xff222242),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LiveStream()));
              },
              child: Row(children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '16:00 - 22:00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lịch tập với PT Đức Đặng',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Bài tập: bụng - chân',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Ngày tập : 26/10/2021",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    new SizedBox(
                      width: 120.0,
                      height: 30.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LiveStream()));
                        },
                        child: Text("Tham gia"),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ),
          SizedBox(height: 10),
          Card(
            color: Color(0xff222242),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LiveStream()));
              },
              child: Row(children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '16:00 - 22:00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Lịch tập với PT Đức Đặng',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Bài tập: bụng - chân',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Ngày tập : 26/10/2021",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    new SizedBox(
                      width: 120.0,
                      height: 30.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LiveStream()));
                        },
                        child: Text("Tham gia"),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
