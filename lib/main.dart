import 'package:flutter/material.dart';
import 'package:mvc_pattern/view/signup.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVC Pattern',
      home: SignupView(),
    );
  }
}
