import 'package:flutter/material.dart';
import 'package:autoconnector/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wifi Auto Connector',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
      },
    );
  }
}
