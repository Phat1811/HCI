import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './schedulebook.dart';

class ProfilePage2 extends StatelessWidget {
  const ProfilePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/backgrond.png"), fit: BoxFit.cover)),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/pt2pic2.png"),
                    fit: BoxFit.cover,
                  )),
                  child: Container(
                    width: 386,
                    height: 310.0,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 140.0,
                            height: 140.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/pt2pic1.png"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(80.0),
                                border: (Border.all(
                                    color: Colors.white, width: 10.0))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text(
                  "Shophie Đỗ",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "@dohang",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                Container(
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        const Text('(4)',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(color: Colors.grey.shade300),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Kinh nghiệm
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Kinh nghiệm",
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                "5 Năm",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        //Theo dõi
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Số người đăng ký",
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                "1875",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Giá tiền",
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                "2 triệu / 1 khóa",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        // Ngôn ngữ
                      ],
                    ),
                  ),
                ),
                // Container(
                //   width: 120,
                //   height: 45,
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 5),
                //     child: RaisedButton(
                //       color: Colors.greenAccent[700],
                //       onPressed: () {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => BookPage()));
                //       },
                //       child: Text(
                //         "Đặt lịch",
                //         style: TextStyle(
                //             color: Colors.white,
                //             fontWeight: FontWeight.w900,
                //             fontSize: 16),
                //       ),
                //     ),
                //   ),
                // ),
                Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Chip(
                              label: const Text('Cải thiện về sức khoẻ'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                              label: const Text('Tăng cân'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                              label: const Text('Tăng cơ bắp'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        //   children: [
                        //     Chip(
                        //       label: const Text('FatLoss'),
                        //     ),
                        //     SizedBox(
                        //       width: 10,
                        //     ),
                        //     Chip(
                        //       label: const Text('Stretching'),
                        //     ),
                        //   ],
                        // ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          color: Colors.greenAccent,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Tiểu Sử",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      child: Text(
                    "MÌnh tên là Hằng, với kinh nghiệm làm việc tại Leep mình hiện tại có thể hỗ trợ các bạn giảm cân và cải thiện sức khỏe ",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /*Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: new SizedBox(
                          width: 150.0,
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookPage()));
                            },
                            child: Text(
                              "Theo dõi",
                              style: TextStyle(color: Colors.black),
                            ),
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                    ),*/
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: new SizedBox(
                          width: 150.0,
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookPage()));
                            },
                            child: Text("Đặt lịch"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
