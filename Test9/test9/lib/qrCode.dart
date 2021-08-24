import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QrCode extends StatefulWidget {
  @override
  _QrCodeState createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  String codeScan;
  String hasil;

  Future scanBarcode() async {
    hasil = await FlutterBarcodeScanner.scanBarcode("#47b9ff", "CANCEL", true);
    setState(() {
      codeScan = hasil;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(
            Icons.qr_code_scanner,
            size: 133.0,
          ),
          new RaisedButton(
            onPressed: () {
              //scanBarcode();
            },
            color: Colors.blue,
            splashColor: Colors.blue[800],
            child: Text(
              "Scan Now",
              style: new TextStyle(
                  color: Colors.white, fontSize: 20.0, letterSpacing: 3.0),
            ),
          ),
          new Text(codeScan),
        ],
      ),
    );
  }
}
