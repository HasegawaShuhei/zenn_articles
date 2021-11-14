import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  // 値を受け取りたいとき
  const Page2({Key? key, @PathParam() required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text),
    );
  }
}
