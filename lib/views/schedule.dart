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
      appBar: AppBar(
        leading: Icon(Icons.ac_unit,color: Color(0xff222242),),
        title: Text('Lịch tập luyện'),
        backgroundColor: Color(0xff222242),
      ),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 65, 10, 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                  // color: Colors.indigo[800],

                  child: SfDateRangePicker(
                    view: DateRangePickerView.month,
                    monthViewSettings:
                        DateRangePickerMonthViewSettings(specialDates: [
                      DateTime(2021, 11, 3),
                      DateTime(2021, 11, 5),
                      DateTime(2021, 11, 6),
                      DateTime(2021, 11, 7),
                      DateTime(2021, 11, 8),
                      DateTime(2021, 11, 9),
                      DateTime(2021, 11, 10),
                      DateTime(2021, 11, 12),
                      DateTime(2021, 11, 13),
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
                      specialDatesTextStyle:
                          const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),
              time_day()
            ],
          ),
        ),
      ),
     
    );
  }
}



class time_day extends StatefulWidget {
  const time_day({ Key? key }) : super(key: key);


  @override
  _time_dayState createState() => _time_dayState();
}

class _time_dayState extends State<time_day> {
   DateTime date = DateTime.now();
  Future<Null> selectTimePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(1940),
        lastDate: DateTime(2030));
    if (picked != null && picked != date) {
      setState(() {
        date = picked;
        print(date.toString());
      });
    }
  }
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
                        fontSize: 17,
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
                      "Ngày tập : 3/11/2021",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Row(

                      children: [
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
                    SizedBox(width: 10),
                     new SizedBox(
                      width: 120.0,
                      height: 30.0,
                      child: RaisedButton(
                        onPressed: () {
                                  selectTimePicker(context);
                  
                        },
                        child: Text("Đổi lịch tập"),
                      ),
                    ),
                      ],
                    )
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
                        fontSize: 17,
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
                      "Ngày tập : 3/11/2021",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
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
                    SizedBox(width: 10),
                    new SizedBox(
                      width: 120.0,
                      height: 30.0,
                      child: RaisedButton(
                        onPressed: () {
                                                            selectTimePicker(context);

                        },
                        child: Text("Đổi lịch tập"),
                      ),
                    ),
                      ],
                    )
                    
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


