import 'package:flutter/material.dart';
import 'package:wifi_configuration/wifi_configuration.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.filter_center_focus),
      elevation: 100,
      onPressed: () async {
        final barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#716be3',
          'Cancel',
          false,
          ScanMode.QR,
        );

        if (barcodeScanRes == '-1') {
          return;
        }

        getConnectionState(barcodeScanRes);
      },
    );
  }

  void getConnectionState(String code) async {
    //S:Nelly1;T:WPA;P:nicasio1688;;
    final data = code.substring(5);
    final splitedData = data.split(';');

    final ssid = splitedData[0].substring(2);
    final password = splitedData[2].substring(2);

    print(ssid);
    var listAvailableWifi = await WifiConfiguration.getWifiList();
    // print("get wifi list : " + listAvailableWifi.toString());
    WifiConnectionStatus connectionStatus =
        await WifiConfiguration.connectToWifi(
            ssid, password, "com.example.wifi_configuration_example");
  }
}
