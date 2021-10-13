import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './schedulebook.dart';

class ProfilePage1 extends StatelessWidget {
  const ProfilePage1({Key? key}) : super(key: key);

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
                    image: AssetImage("assets/ptpic1.png"),
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
                                    image: AssetImage("assets/ptpic2.png"),
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
                  "Đức Đặng",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "@ducdang",
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
                        const Text('(4.5)',
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
<<<<<<< HEAD
                                "902",
=======
                                "7902",
>>>>>>> 5c72add6103d36f8aab722dffcd2652311e8caa3
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),

                        // Ngôn ngữ
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Giá tiền",
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                "100 coins/h",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
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
                              label: const Text('Giảm mỡ'),
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
                        Text("Giới thiệu",
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
                    "Minh tên là Đức,hiện tại mình đang là PT cho LEEPS,với kinh nghiệm là một người đã từng giúp nhiều bạn cải thiện về dáng vóc,sức khỏe một cách nhanh chóng.Mình tự tin có thể giúp các bạn thay đổi thành công về ngoại hình của mình.#Top 15 Menphysis Nha Trang #Model Fitness",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      /*child: Padding(
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
                      ),*/
                    ),
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
