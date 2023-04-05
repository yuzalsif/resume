import 'package:flutter/material.dart';

import 'package:resume/modules/home/screens/home.dart';

void main() {
  runApp(const Resume());
}

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Resume',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home());
  }
}
