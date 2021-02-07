import 'package:flutter/material.dart';
import 'package:portfolio_app/HomeScreen.dart';

void main() {
  runApp(Start());
}

class Start extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          accentColor: Color(0xFC7969),
          backgroundColor: Color.fromRGBO(234, 233, 231, 1),
          buttonColor: Color(0xFC7969)),
      initialRoute: '/',
      routes: {'/': (context) => HomeScreen()},
    );
  }
}
