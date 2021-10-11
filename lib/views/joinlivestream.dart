import 'package:flutter/material.dart';
import 'package:hci_layout/views/livestream_page.dart';

class LiveStream extends StatelessWidget {
  Icon actionIcon = new Icon(
    Icons.search,
    color: Colors.white,
  );
  Widget appBarTitle = Text(
    'Trang tập luyện',
    style: TextStyle(color: Colors.white),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff222242),
        title: Text(
          'Trang tập luyện',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/backgrond.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                width: 350,
                height: 400,
                color: Color(0xff222242),
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/ptpic2.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(80.0),
                            border:
                                (Border.all(color: Colors.white, width: 10.0))),
                      ),
                    ),
                    Text(
                      "Đức Đặng",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ngày: 12/10/2021",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Thời gian tập: 15h00 -> 16h30",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Nội dung tập: đùi, cardio",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: 120,
                          height: 56,
                          child: ElevatedButton(
                            style: (ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                            )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LiveStreamPage()));
                            },
                            child: Text('Tham gia LiveStream', style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
