import 'package:flutter/material.dart';
import 'package:untar_mobile_banking/screens/pln/components/body.dart';
import 'components/body.dart';

class PLNScreen extends StatelessWidget {
  static String routeName = "/pln";
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
