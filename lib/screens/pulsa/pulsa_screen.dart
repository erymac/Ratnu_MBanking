import 'package:flutter/material.dart';
import 'package:untar_mobile_banking/screens/pulsa/components/body.dart';
import 'components/body.dart';

class PulsaScreen extends StatelessWidget {
  static String routeName = "/pulsa";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pembayaran"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
