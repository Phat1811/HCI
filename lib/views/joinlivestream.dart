import 'package:flutter/material.dart';
import 'package:hci_layout/views/livestream_page.dart';

class LiveStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new SizedBox(
              width: 120,
              height: 56,
              child: ElevatedButton(
                style: (ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LiveStreamPage()));
                },
                child: Text('Tham gia LiveStream'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
