import 'package:flutter/cupertino.dart';

class Advise {
  final String imaUrl;
  final String title;
  final String description;

  Advise(
      {required this.imaUrl, required this.title, required this.description});
}

class Exercise {
  final String imaUrl;
  final String title;
  final Widget page;

  Exercise({
    required this.imaUrl,
    required this.title,
    required this.page,
  });
}
