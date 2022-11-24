import 'package:dart_flutter_task2/view/screen/account.dart';
import 'package:dart_flutter_task2/view/screen/market.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Account(),
    );
  }
}

