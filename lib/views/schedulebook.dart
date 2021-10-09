import 'package:flutter/material.dart';
//import './transaction.dart';
import 'package:table_calendar/table_calendar.dart';
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
  // late CalendarController _controller;

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = CalendarController();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime(1990),
              lastDay: DateTime(2050),
            ),
            // TableCalendar(
            //   initialCalendarFormat: CalendarFormat.month,
            //   calendarStyle: CalendarStyle(
            //       todayColor: Colors.green,
            //       selectedColor: Theme.of(context).primaryColor,
            //       todayStyle: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 22.0,
            //           color: Colors.white)),
            //   headerStyle: HeaderStyle(
            //     centerHeaderTitle: true,
            //     formatButtonDecoration: BoxDecoration(
            //       color: Colors.green,
            //       borderRadius: BorderRadius.circular(22.0),
            //     ),
            //     formatButtonTextStyle: TextStyle(color: Colors.white),
            //     formatButtonShowsNext: false,
            //   ),
            //   startingDayOfWeek: StartingDayOfWeek.monday,
            //   builders: CalendarBuilders(
            //     selectedDayBuilder: (context, date, events) => Container(
            //         margin: const EdgeInsets.all(5.0),
            //         alignment: Alignment.center,
            //         decoration: BoxDecoration(
            //             color: Theme.of(context).primaryColor,
            //             borderRadius: BorderRadius.circular(8.0)),
            //         child: Text(
            //           date.day.toString(),
            //           style: TextStyle(color: Colors.white),
            //         )),
            //     todayDayBuilder: (context, date, events) => Container(
            //         margin: const EdgeInsets.all(5.0),
            //         alignment: Alignment.center,
            //         decoration: BoxDecoration(
            //             color: Colors.green,
            //             borderRadius: BorderRadius.circular(8.0)),
            //         child: Text(
            //           date.day.toString(),
            //           style: TextStyle(color: Colors.white),
            //         )),
            //   ),
            //   calendarController: _controller,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  'Availible time:',
                ),
                new Text(
                  '13:00 - 19:00',
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Card(
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
                        Text(
                          'Từ                                                             ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                        Text(
                          '13:30',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.green),
                        ),
                      ],
                    )
                  ]),
                ),
                Card(
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
                        Text(
                          'Đến                                                           ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                        Text(
                          '15:30',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.green),
                        ),
                      ],
                    )
                  ]),
                ),
                Card(
                  child: Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 80,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '100 Coin',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new SizedBox(
                          width: 150.0,
                          height: 70.0,
                          child: RaisedButton(
                            child: Text(
                              'Xác nhận',
                              style: TextStyle(fontSize: 22.0),
                            ),
                            color: Colors.green,
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
