import 'package:flutter/cupertino.dart';

class Category {
  final String imaUrl;
  final String name;
  final String star;
  final Widget page;
  

  Category(
      {required this.imaUrl,
      required this.name,
      required this.star,
      required this.page});
}
