import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.qr_code_sharp),
          onPressed: () {},
        ),
      ),
    );
  }
}
