import 'package:flutter/material.dart';
import 'package:tallybook/views/login/login.dart';
import 'package:tallybook/views/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "卜夋记账本",
      initialRoute: "login",
      home: Login(),
      routes: {"login": (context) => Login(), "home": (context) => HomePage()},
    );
  }
}
