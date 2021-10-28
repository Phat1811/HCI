import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hci_layout/main.dart';
import 'package:hci_layout/views/foodpage.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({Key? key}) : super(key: key);

  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  // the controller for the text field associated with "height"
  final _heightController = TextEditingController(text: "1.6");

  // the controller for the text field associated with "weight"
  final _weightController = TextEditingController(text: "55");

  // The BMI
  double? _bmi;

  // the message at the beginning
  String _message = 'Cơ thể bạn rất tốt';

  void _calculate() {
    final double? height = double.tryParse(_heightController.value.text);
    final double? weight = double.tryParse(_weightController.value.text);

    // Check if the inputs are valid
    if (height == null || height <= 0 || weight == null || weight <= 0) {
      setState(() {
        _message = "Bạn cần phải nhập số cân nặng và chiều cao ";
      });
      return;
    }

    setState(() {
      _bmi = weight / (height * height);
      if (_bmi! < 18.5) {
        _message = "Bạn đang thiếu cân";
      } else if (_bmi! < 25) {
        _message = 'Cơ thể bạn rất tốt';
      } else if (_bmi! < 30) {
        _message = 'Bạn đang thừa cân';
      } else {
        _message = 'Bạn đang béo phì';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            //     gradient: LinearGradient(colors: [
            //   Color(0xff0f17ad),
            //   Color(0xFF6985e8),
            // ])
            image: DecorationImage(
                image: AssetImage("assets/backgrond.png"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(8, 50, 8, 0),
              child: Container(
                child: Row(
                  children: [],
                ),
              ),
            ),
            Image.asset(
              'undraw.png',
              fit: BoxFit.cover,
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0)),
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
                                  "1062.0",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Kcal",
                                  style: TextStyle(fontSize: 20),
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
                                  "01:52:31",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Thời gian",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),

                          // Ngôn ngữ
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
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
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 30),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Chế độ ăn trong ngày',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.local_drink_sharp,
                                color: Colors.blue,
                                size: 20,
                              ),
                              Icon(
                                Icons.local_dining,
                                color: Colors.blueAccent,
                                size: 20,
                              ),
                              Text(
                                'Giữ cho bạn khỏe mạnh và giúp bạ giảm cân',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: new SizedBox(
                                    width: 150.0,
                                    height: 50.0,
                                    child: RaisedButton(
                                      color: Color(0xff402fcc),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    FoodPage()));
                                      },
                                      child: Text(
                                        "Xem",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 320,
                      child: Card(
                        color: Colors.white,
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'BMI(kg/m²)',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              TextField(
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: true),
                                decoration:
                                    InputDecoration(labelText: 'Chiều cao (m)'),
                                controller: _heightController,
                              ),
                              TextField(
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: true),
                                decoration: InputDecoration(
                                  labelText: 'Cân nặng (kg)',
                                ),
                                controller: _weightController,
                              ),
                              RaisedButton(
                                color: Color(0xff402fcc),
                                onPressed: _calculate,
                                child: Text(
                                  "Xem",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                child: Text(
                                  _bmi == null
                                      ? '21.48'
                                      : _bmi!.toStringAsFixed(2),
                                  style: TextStyle(fontSize: 40),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Text(
                                  _message,
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
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
                "Trang chủ",
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
