import 'package:flutter/material.dart';
import 'package:hci_layout/mode.dart';
import 'package:hci_layout/views/home.dart';
import 'package:hci_layout/views/livestream_page.dart';
import 'package:hci_layout/views/profile_page.dart';
import 'package:hci_layout/views/profile_page2.dart';
import 'package:hci_layout/views/profile_page3.dart';
import 'package:hci_layout/views/profile_page4.dart';
import 'package:hci_layout/views/schedule.dart';
import 'package:hci_layout/views/settings.dart';
import 'package:hci_layout/views/joinlivestream.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Category> catego = [
    Category(
        imaUrl: "assets/pt1.jpg",
        name: "Đức Đặng",
        star: "Đánh giá: 4.5/5",
        page: ProfilePage1()),
    Category(
        imaUrl: "assets/pt2.jpg",
        name: "Sophie Đỗ",
        star: "Đánh giá: 4.8/5",
        page: ProfilePage2()),
    Category(
        imaUrl: "assets/pt3.jpg",
        name: "Ken Nguyễn",
        star: "Đánh giá: 4.9/5",
        page: ProfilePage3()),
    Category(
        imaUrl: "assets/pt4.jpeg",
        name: "Chris Nguyễn",
        star: "Đánh giá: 4.7/5",
        page: ProfilePage4()),
  ];
  int _currentIndex = 0;
  final List pages = [
    HomePageLocal(),
    HomeCalendarPage(),
    LiveStream(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white30,
          fixedColor: Colors.blue,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Trang chủ',
              backgroundColor: Color(0xFF40D876),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
              ),
              label: 'Lịch tập',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Tập luyện',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Hồ Sơ',
              backgroundColor: Colors.blue,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
