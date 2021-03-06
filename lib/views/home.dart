import 'package:flutter/material.dart';
import 'package:hci_layout/mode.dart';
import 'package:hci_layout/views/profile_page.dart';
import 'package:hci_layout/views/profile_page2.dart';
import 'package:hci_layout/views/profile_page3.dart';
import 'package:hci_layout/views/profile_page4.dart';


class HomePageLocal extends StatefulWidget {
  const HomePageLocal({ Key? key }) : super(key: key);

  @override
  _HomePageLocalState createState() => _HomePageLocalState();
}

class _HomePageLocalState extends State<HomePageLocal> {
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
  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/theme.png"), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Chào, ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                        Text(
                          "Dương",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color(0xFF40D876)),
                        )
                      ],
                    ),
                    Container(
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/avata.jpg"),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 20),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Find",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Color(0xFF40D876)),
                          ),
                          Text(
                            " your Workout",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                  decoration: BoxDecoration(
                    color: Color(0xFF232441),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Tìm kiếm HLV",
                        hintStyle: TextStyle(color: Colors.white),
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        border: InputBorder.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Text(
                        "Tất cả HLV",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                      width: double.infinity,
                      height: 300,
                      child: ListView.builder(
                          itemCount: catego.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(catego[index].imaUrl),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        catego[index].name,
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Wrap(
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        children: [
                                          Text(catego[index].star,
                                              style: TextStyle(
                                                color: Colors.white,
                                              )),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                        ],
                                      ),
                                      RaisedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      catego[index].page));
                                        },
                                        child: Text('Tìm hiểu'),
                                        color: Colors.white,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          })),
                )
              ],
            ),
          ),
        );
  }
}