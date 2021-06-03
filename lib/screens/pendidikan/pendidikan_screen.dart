import 'package:flutter/material.dart';
import 'components/body.dart';

class PendidikanScreen extends StatelessWidget {
  static String routeName = "/pendidikan";
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
