import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({Key? key}) : super(key: key);

  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        // Padding(
        //   padding: EdgeInsets.all(10.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text(
        //         'Các bài tập',
        //         style: TextStyle(
        //             fontSize: 24,
        //             fontWeight: FontWeight.w800,
        //             letterSpacing: 1.5),
        //       ),
        //       Text(
        //         'See All',
        //         style: TextStyle(
        //           fontSize: 24,
        //           color: Colors.cyan,
        //           fontWeight: FontWeight.w800,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // Expanded(
        //   child: ListView(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(10),
        //         child: Container(
        //             width: double.infinity,
        //             height: 300,
        //             child: ListView.builder(
        //                 itemCount: exercise.length,
        //                 scrollDirection: Axis.horizontal,
        //                 itemBuilder: (BuildContext context, index) {
        //                   return Padding(
        //                     padding: const EdgeInsets.symmetric(horizontal: 10),
        //                     child: Column(
        //                       children: [
        //                         Container(
        //                           height: 200,
        //                           width: 150,
        //                           decoration: BoxDecoration(
        //                             image: DecorationImage(
        //                               image: AssetImage(exercise[index].imaUrl),
        //                               fit: BoxFit.cover,
        //                             ),
        //                             borderRadius: BorderRadius.circular(30),
        //                           ),
        //                         ),
        //                         Column(
        //                           children: [
        //                             SizedBox(
        //                               height: 5,
        //                             ),
        //                             Text(
        //                               exercise[index].title,
        //                               style: TextStyle(
        //                                   fontSize: 20, color: Colors.black),
        //                             ),
        //                             RaisedButton(
        //                               onPressed: () {
        //                                 Navigator.push(
        //                                     context,
        //                                     MaterialPageRoute(
        //                                         builder: (context) =>
        //                                             exercise[index].page));
        //                               },
        //                               child: Text('Tìm hiểu'),
        //                               color: Colors.white,
        //                             )
        //                           ],
        //                         )
        //                       ],
        //                     ),
        //                   );
        //                 })),
        //       )
        //     ],
        //   ),
        // ),
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 30),
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildDateColumn("M", 2, true),
              buildDateColumn("T", 3, false),
              buildDateColumn("W", 4, false),
              buildDateColumn("T", 5, false),
              buildDateColumn("F", 6, false),
              buildDateColumn("S", 7, false),
              buildDateColumn("S", 8, false),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 0, bottom: 20),
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
        // Expanded(
        //     child: Container(
        //   child: ListView(
        //     children: [
        //       Text(
        //           "+ Bữa sáng giàu năng lượng: nửa ổ bánh mỳ (carb), 30gr giò lụa hoặc thịt nạc (protein), 1 cốc sữa đậu nành nguyên chất (200 ml), 1 quả dưa chuột (100 g)"),
        //       Text(
        //           "+ Bữa trưa: 2 bát cơm (carb), 30g thịt nạc vai (protein), rau muống luộc (200 g) và 1 miếng dưa hấu (100g)"),
        //       Text(
        //           "+ Bữa ăn nhẹ chiều: 1 hộp sữa chua ít béo (200ml), 1 chiếc bánh ngọt hoặc chút đường (5g)."),
        //       Text(
        //           "+ Bữa chiều: 1 bát cơm (60g gạo, carb), đậu phụ nhồi thịt hấp (50g đậu phụ, 30g thịt nạc vai), 1 quả lê (100 g)"),
        //       Text("+ Bữa nhẹ tối: 1 cốc sữa không đường (100 ml) \n"),
        //     ],
        //   ),
        // ))
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: "07:00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        children: [
                                      TextSpan(
                                        text: "AM",
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
                          border:
                              Border.all(width: 1, color: Colors.grey.shade300),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: "11:00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        children: [
                                      TextSpan(
                                        text: "AM",
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
                          border:
                              Border.all(width: 1, color: Colors.grey.shade300),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: "2:00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        children: [
                                      TextSpan(
                                        text: "PM",
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
                          border:
                              Border.all(width: 1, color: Colors.grey.shade300),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: "5:00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        children: [
                                      TextSpan(
                                        text: "PM",
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
                          border:
                              Border.all(width: 1, color: Colors.grey.shade300),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: "8:00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        children: [
                                      TextSpan(
                                        text: "PM",
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
                          border:
                              Border.all(width: 1, color: Colors.grey.shade300),
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
        )
      ],
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
