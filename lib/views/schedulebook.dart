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
                  child: TableCalendar(
                    calendarStyle: CalendarStyle(
                      defaultTextStyle: TextStyle(color: Colors.white),
                      weekendTextStyle: TextStyle(color: Colors.white),
                      outsideTextStyle: TextStyle(color: Colors.white),
                      todayTextStyle: TextStyle(color: Colors.white),
                      holidayTextStyle: TextStyle(color: Colors.white),
                      disabledTextStyle: TextStyle(color: Colors.white),
                      rangeEndTextStyle: TextStyle(color: Colors.white),
                      withinRangeTextStyle: TextStyle(color: Colors.white),
                      selectedTextStyle: TextStyle(color: Colors.white),
                      rangeStartTextStyle: TextStyle(color: Colors.white),
                    ),
                    headerStyle: HeaderStyle(
                
                      formatButtonTextStyle: TextStyle(color: Colors.white),
                      titleTextStyle: TextStyle(color: Colors.white),
                      leftChevronIcon: Icon(Icons.arrow_back_ios,
                          size: 15, color: Colors.white),
                      rightChevronIcon: Icon(Icons.arrow_forward_ios,
                          size: 15, color: Colors.white),
                    ),
                    focusedDay: DateTime.now(),
                    firstDay: DateTime(1990),
                    lastDay: DateTime(2050),
                  ),
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
                SizedBox(height: 10,),
                Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                  
                    new Text(
                      'Thời gian luyện tập:',
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
                ),
                SizedBox(height: 10,),
                Column(
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
                                Text(
                    
                                  'Từ                                                             ',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),
                                ),
                                Text(
                                  '13:30',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.green),
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
                            Text(
                              'Đến                                                           ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.normal,color: Colors.white),
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
                    SizedBox(height: 10,),
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
                          padding: EdgeInsets.all(8),
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
                              width: 120.0,
                              height: 70.0,
                              child: RaisedButton(
                                child: Text(
                                  'Xác nhận',
                                  style: TextStyle(fontSize: 20.0),
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
        ),
      ),
    );
  }
}
