import 'package:flutter/material.dart';
import 'package:hci_layout/views/home.dart';
import 'package:hci_layout/views/schedule.dart';

class BookingCourse extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Booking());
  }
}

class Booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  color: Color(0xFF363f93),
                ),
                child: Stack(children: [
                  Positioned(
                    top: 80,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          )),
                    ),
                  ),
                  Positioned(
                      top: 115,
                      left: 20,
                      child: Text("Danh sách lớp học",
                          style: TextStyle(
                              fontSize: 20, color: Color(0xFF363f93))))
                ])),
            SizedBox(height: height * 0.05),
            Container(
                height: 400,
                child: Stack(children: [
                  Positioned(
                      top: 35,
                      left: 20,
                      child: Material(
                        child: Container(
                            height: 220,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(0.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 4,
                                    blurRadius: 20,
                                    offset: Offset(10, -10), //
                                  )
                                ])),
                      )),
                  Positioned(
                      top: 50,
                      left: 30,
                      child: Card(
                          elevation: 10,
                          shadowColor: Colors.grey.withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                              height: 190,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1577221084712-45b0445d2b00?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=398&q=80"),
                                  ))))),
                  Positioned(
                      top: 60,
                      left: 200,
                      child: Container(
                          height: 250,
                          width: 230,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Khóa học giảm mỡ",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF363f93),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Huấn luyện viên: Đức Đặng",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              Divider(color: Colors.black),
                              Text(
                                "Thời gian : 1 tháng(13h - 15h)",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Bắt đầu từ ngày 20/10/2021 - 20/11/2021",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HomeCalendarPage()));
                                },
                                child: Text("Đăng ký ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                color: Colors.grey.shade600,
                              )
                            ],
                          )))
                ]))
          ],
        ));
  }
}
