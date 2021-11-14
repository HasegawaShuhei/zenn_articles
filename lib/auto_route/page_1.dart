import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:zenn_articles/routes/router.gr.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () => context.router.push(Route2(text: 'auto route')),
          child: const Text('to page2'),
        ),
      ),
    );
  }
}
