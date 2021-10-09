import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  "@shophieDo",
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
                          Icons.star,
                          color: Colors.grey,
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
                                "4 Năm",
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
                                "Theo dõi",
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                "14210",
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
                                "Lịch tập",
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                "Còn trống",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage2()));
                      },
                      child: Text("Đặt lịch"),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: ListView(
                      children: [
                        Chip(
                          label: const Text('ImproveGeneralHealth'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Chip(
                          label: const Text('WeightGain'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Chip(
                          label: const Text('FatLoss'),
                        ),
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
                        Text("Biography",
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
                    "Lifestyle. Energy. Results. Train like an Athlete! Expert on Weight Lifting & CrossFit, Strong on Core Training & Nutritionist. Health!",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
