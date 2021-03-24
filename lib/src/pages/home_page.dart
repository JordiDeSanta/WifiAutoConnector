import 'package:autoconnector/src/widgets/scan_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.blue[500],
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.white,
    ));

    return Scaffold(
      appBar: AppBar(
        title: Text('Wifi QR Connector'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ScanButton(),
      body: Center(child: Text('Scan a QR Code')),
    );
  }
}
