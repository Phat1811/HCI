import 'package:flutter/material.dart';
import 'package:hci_layout/main.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Tuần này",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildDateColumn("CN", 24, false),
                        buildDateColumn("T2", 25, false),
                        buildDateColumn("T3", 26, true),
                        buildDateColumn("T4", 27, false),
                        buildDateColumn("T5", 28, false),
                        buildDateColumn("T6", 29, false),
                        buildDateColumn("T7", 30, false),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chế độ ăn trong ngày',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              // Bữa Sáng -------------------------------------------------------

                              Container(
                                width: 15,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5),
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 60,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                            text: "07:00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            children: [
                                          TextSpan(
                                            text: " Sáng",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          )
                                        ])),
                                    Text(
                                      "2h",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.only(right: 10, left: 30),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bữa sáng giàu năng lượng",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "     + Nửa ổ bánh mỳ (carb)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + 30gr giò lụa hoặc thịt nạc (protein)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + 1 cốc sữa đậu nành nguyên chất (200 ml)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + 1 quả dưa chuột (100 g)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Bữa Trưa -------------------------------------------------------
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 15,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5),
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 60,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                            text: "11:00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            children: [
                                          TextSpan(
                                            text: " Sáng",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          )
                                        ])),
                                    Text(
                                      "2h",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.only(right: 10, left: 30),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bữa trưa",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "     + 2 bát cơm (carb)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + 30g thịt nạc vai (protein)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + rau muống luộc (200 g)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + 1 miếng dưa hấu (100g)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Bữa nhẹ chiều -------------------------------------------------------
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 15,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5),
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 60,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                            text: "2:00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            children: [
                                          TextSpan(
                                            text: " Chiều",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          )
                                        ])),
                                    Text(
                                      "2h",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.only(right: 10, left: 30),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bữa nhẹ chiều",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "     + 1 hộp sữa chua ít béo (200ml)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + 1 chiếc bánh ngọt hoặc chút đường (5g)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Bữa chiều -------------------------------------------------------
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 15,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5),
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 60,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                            text: "5:00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            children: [
                                          TextSpan(
                                            text: " Chiều",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          )
                                        ])),
                                    Text(
                                      "2h",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.only(right: 10, left: 30),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bữa chiều",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "     + 1 bát cơm (60g gạo, carb)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + đậu phụ nhồi thịt hấp (50g đậu phụ, 30g thịt nạc vai)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "     + 1 quả lê (100 g)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Bữa tối -------------------------------------------------------
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 15,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5),
                                    )),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 60,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                            text: "8:00",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            children: [
                                          TextSpan(
                                            text: " Chiều",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey),
                                          )
                                        ])),
                                    Text(
                                      "2h",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.only(right: 10, left: 30),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bữa nhẹ tối",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "     + 1 cốc sữa không đường (100 ml)",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            RaisedButton(
              color: Color(0xff402fcc),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDateColumn(String weekDay, int date, bool isActive) {
    return Container(
      decoration: isActive
          ? BoxDecoration(
              color: Color(0xff402fcc), borderRadius: BorderRadius.circular(10))
          : BoxDecoration(),
      height: 55,
      width: 35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            weekDay,
            style: TextStyle(color: Colors.grey, fontSize: 11),
          ),
          Text(date.toString(),
              style: TextStyle(
                  color: isActive ? Colors.white : Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
