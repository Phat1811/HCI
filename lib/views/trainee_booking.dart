import 'package:flutter/material.dart';
import 'package:hci_layout/views/schedulebook.dart';

class booking_trainee extends StatefulWidget {
  @override
  _booking_traineeState createState() => _booking_traineeState();
}

class _booking_traineeState extends State<booking_trainee> {
  Object? valueChoose;
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
    return Scaffold(
        appBar: AppBar(
          title: Text("Đặt lịch cho người tập"),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/backgrond.png"),
                    fit: BoxFit.cover)),
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: DropdownButton(
                            hint: Text("Chọn số ngày tập luyện",
                                style: TextStyle(color: Colors.white)),
                            dropdownColor: Colors.grey,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 36,
                            isExpanded: true,
                            underline: SizedBox(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ),
                            value: valueChoose,
                            onChanged: (newValue) {
                              setState(() {
                                valueChoose = newValue;
                              });
                            },
                            items: [
                              "15 ngày ( tối thiểu 5 buổi tập )",
                              "30 ngày ( tối thiểu 15 buổi tập )",
                              "60 ngày ( tối thiểu 35 buổi tập ) "
                            ].map((valueDay) {
                              return DropdownMenuItem(
                                  value: (valueDay),
                                  child: Text(
                                    valueDay,
                                    style: TextStyle(color: Colors.white),
                                  ));
                            }).toList(),
                          ),
                        ),
                        SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FlatButton(
                                child: Text("Chọn ngày bắt đầu tập"),
                                color: Colors.blue,
                                textColor: Colors.white,
                                onPressed: () {
                                  selectTimePicker(context);
                                }),
                            SizedBox(height: 10),
                            Text(
                                "Ngày bắt đầu tập luyện : " +
                                    date.day.toString() +
                                    " - " +
                                    date.month.toString() +
                                    " - " +
                                    date.year.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Ngày kết thúc tập luyện : 30 - 11 - 2021",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookPage()));
                          },
                          child: Text(
                            "Chọn số lượng buổi tập",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )))));
  }
}
