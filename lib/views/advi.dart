import 'package:flutter/material.dart';
import 'package:startup_namer/advise.dart';
import 'package:startup_namer/main.dart';

import 'advise.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({Key? key}) : super(key: key);

  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  final List<Exercise> exercise = [
    Exercise(
        imaUrl: "assets/tay.jpg", title: "Bài tập tay", page: AdvisePage()),
    Exercise(
        imaUrl: "assets/vai.jpg", title: "Bài tập vai", page: AdvisePage()),
    Exercise(
        imaUrl: "assets/ngực.jpg", title: "Bài tập ngực", page: AdvisePage()),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Các bài tập',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.5),
              ),
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.cyan,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                    width: double.infinity,
                    height: 300,
                    child: ListView.builder(
                        itemCount: exercise.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(exercise[index].imaUrl),
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
                                      exercise[index].title,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                    RaisedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    exercise[index].page));
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
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Chế độ ăn trong 7 ngày',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.cyan,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Container(
          child: ListView(
            children: [
              Text(
                'Ngày thứ nhất\n',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                  "+ Bữa sáng giàu năng lượng: nửa ổ bánh mỳ (carb), 30gr giò lụa hoặc thịt nạc (protein), 1 cốc sữa đậu nành nguyên chất (200 ml), 1 quả dưa chuột (100 g)"),
              Text(
                  "+ Bữa trưa: 2 bát cơm (carb), 30g thịt nạc vai (protein), rau muống luộc (200 g) và 1 miếng dưa hấu (100g)"),
              Text(
                  "+ Bữa ăn nhẹ chiều: 1 hộp sữa chua ít béo (200ml), 1 chiếc bánh ngọt hoặc chút đường (5g)."),
              Text(
                  "+ Bữa chiều: 1 bát cơm (60g gạo, carb), đậu phụ nhồi thịt hấp (50g đậu phụ, 30g thịt nạc vai), 1 quả lê (100 g)"),
              Text("+ Bữa nhẹ tối: 1 cốc sữa không đường (100 ml) \n"),
              Text(
                'Ngày thứ hai\n',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text("Bữa sáng: 1 bát phở gà và 01 cốc sữa đậu nành nguyên chất (120 ml)\n" +
                  "+ Bữa trưa: 2 lưng bát cơm, 1 phần thịt sốt cà chua, 1 đĩa rau cải luộc, 1 quả cam ăn sống hoặc ép nước.\n" +
                  "+ Bữa ăn nhẹ chiều: 1 hũ sữa chua ít béo (200 ml), 1 cái bánh ngọt hoặc 5g đường\n" +
                  "+ Bữa chiều: 1 bát cơm (60g gạo), 1 bát canh cà chua nấu trứng, 1 đĩa thịt bò xào giá, 5 quả quýt (100g)\n" +
                  "+ Bữa nhẹ buổi tối: 2 củ khoai sọ luộc\n"),
              Text(
                'Ngày thứ ba\n',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                  "+ Bữa sáng: 1 bát mì bò, 1 ly sữa đậu nành nguyên chất (120 ml)"),
              Text(
                  "+ Bữa trưa: 2 lưng bát cơm (80g gạo), 1 bát canh bí đao nấu tôm, 1 miếng thịt gà (30g), 1 quả chuối tiêu (100g)"),
              Text(
                  "+ Bữa ăn nhẹ chiều: 1 cốc sữa chua tách béo (200 ml), 5g đường"),
              Text(
                  "+ Bữa chiều: 1 bát cơm đầy (60g gạo), 1 đĩa đậu quả luộc (200g), tôm rang: 50g, 1 miếng đu đủ (100g)"),
              Text("+ Bữa nhẹ buổi tối: 1 ly sữa gầy không đường (100 ml)\n"),
              Text(
                'Ngày thứ tư\n',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text("+ Bữa sáng: 1 bát hủ tiếu, 1 quả chuối tiêu, 1 ly sữa mật ong, 300 ml nước.\n" +
                  "+ Bữa trưa: 3 – 4 chén cơm, thịt gà, bò, cá… rau xanh.\n" +
                  "+ Bữa ăn nhẹ chiều: 1 quả trứng luộc; 1 xúc xích bò, 2 quả chuối tiêu và 300ml nước.\n" +
                  "+ Bữa chiều: Ă3 – 4 chén cơm, thực phẩm giàu protein (thịt gà,bò, cá…,)nhiều rau xanh.\n" +
                  "+ Bữa nhẹ buổi tối: 1 ly sữa gầy không đường (100 ml)\n"),
              Text(
                'Ngày thứ năm\n',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text("+ Bữa sáng: 1 đĩa cơm tấm và 1 ly sữa.\n" +
                  "+ Bữa trưa: 3 -4 chén cơm, thịt kho trứng, canh rau cải nấu ngao và 1 ly sinh tố xoài.\n" +
                  "+ Bữa ăn nhẹ chiều: ăn trái cây (chuối, táo, cam, …)\n" +
                  "+ Bữa chiều: 2 chén cơm, trứng rán, thịt bò xào nấm và canh rau ngót nấu thịt bò,\n" +
                  "+ Bữa ăn nhẹ tối: 1 quả trứng luộc và 2 quả chuối tiêu.\n"),
              Text(
                'Ngày thứ sáu\n',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text("+ Bữa sáng: 1 bát hủ tiếu xương, thêm 1 ly sữa và 1 quả chuối chín.\n" +
                  "+ Bữa trưa: 3 -4 chén cơm, thịt vịt kho gừng, thịt bò nấu khoai tây, cải thìa xào nấm.\n" +
                  "+ Bữa ăn nhẹ chiều: một hũ sữa chua.\n" +
                  "+ Bữa chiều: 2 chén cơm, thịt kho tiêu, canh súp lơ nấu sườn và 1 ly sữa.\n" +
                  "+ Bữa ăn nhẹ tối: 1 quả trứng và 1 củ khoai lang.\n"),
              Text(
                'Ngày thứ bảy\n',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text("+ Bữa sáng: 1 bát tô bún bò và 1 quả chuối chín.\n" +
                  "+ Bữa trưa: 3 -4 chén cơm,  cá kho, thịt bò xào hoa lý,  canh thịt hầm và 1 quả chuối.\n" +
                  "+ Bữa ăn nhẹ chiều: sữa chua.\n" +
                  "+ Bữa chiều: 2 chén cơm, thịt bò tái,  1 quả trứng luộc và canh tôm nấu với cải xanh,\n" +
                  "+ Bữa ăn nhẹ tối: 1 ly sữa\n")
            ],
          ),
        ))
      ],
    );
  }
}
