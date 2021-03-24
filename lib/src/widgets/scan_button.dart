import 'package:flutter/material.dart';
import 'package:wifi_configuration/wifi_configuration.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.filter_center_focus),
      onPressed: () async {
        final barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#FF0000',
          'Cancel',
          false,
          ScanMode.QR,
        );
        getConnectionState();
        if (barcodeScanRes == '-1') {
          return;
        }
      },
    );
  }

  void getConnectionState() async {
    var listAvailableWifi = await WifiConfiguration.getWifiList();
    print("get wifi list : " + listAvailableWifi.toString());
    WifiConnectionStatus connectionStatus =
        await WifiConfiguration.connectToWifi(
            "Nelly1", "nicasio1688", "com.example.wifi_configuration_example");
    print("is Connected : ${connectionStatus}");
  }
}