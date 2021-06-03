import 'package:flutter/material.dart';
import 'components/body.dart';

class GantiPinScreen extends StatelessWidget {
  static String routeName = "/ganti_pin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
