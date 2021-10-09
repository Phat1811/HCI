import 'package:flutter/material.dart';


class HistoryPage extends StatefulWidget {
  const HistoryPage({ Key? key }) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(Icons.arrow_back_ios, color: Colors.white)),
            title: Center(
              child: Text("Orders History"),
            ),
            backgroundColor: Color(0xFF0C1B37),
            bottom: TabBar(tabs: [
              Tab(child: Text("Placed")),
              Tab(child: Text("Delivery")),
              Tab(child: Text("Cancelled")),
            ]),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Card(
                child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dũng Trần ( PT )",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        SizedBox(height: 8),
                        Text("Order Time: 2021-03-31T14:43"),
                        Divider(
                          thickness: 2,
                        ),
                        IntrinsicHeight(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("OrderID ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                SizedBox(height: 8),
                                Text("E001")
                              ],
                            ),
                            VerticalDivider(
                              thickness: 1,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Order Amount  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                SizedBox(height: 8),
                                Text("300 leeps")
                              ],
                            ),
                            VerticalDivider(
                              thickness: 1,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Payment ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                SizedBox(height: 8),
                                Text("Credit card/Paypal")
                              ],
                            ),
                            VerticalDivider(
                              thickness: 1,
                            ),
                          ],
                        ))
                      ],
                    ))),
          ),
        );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(Icons.arrow_back_ios, color: Colors.white)),
            title: Center(
              child: Text("Orders History"),
            ),
            backgroundColor: Color(0xFF0C1B37),
            bottom: TabBar(tabs: [
              Tab(child: Text("Placed")),
              Tab(child: Text("Delivery")),
              Tab(child: Text("Cancelled")),
            ]),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Card(
                child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dũng Trần ( PT )",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        SizedBox(height: 8),
                        Text("Order Time: 2021-03-31T14:43"),
                        Divider(
                          thickness: 2,
                        ),
                        IntrinsicHeight(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("OrderID ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                SizedBox(height: 8),
                                Text("E001")
                              ],
                            ),
                            VerticalDivider(
                              thickness: 1,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Order Amount  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                SizedBox(height: 8),
                                Text("300 leeps")
                              ],
                            ),
                            VerticalDivider(
                              thickness: 1,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Payment ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                SizedBox(height: 8),
                                Text("Credit card/Paypal")
                              ],
                            ),
                            VerticalDivider(
                              thickness: 1,
                            ),
                          ],
                        ))
                      ],
                    ))),
          ),
        ),
      ),
    );
  }
}
