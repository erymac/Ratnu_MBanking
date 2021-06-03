import 'package:flutter/material.dart';
import 'components/body.dart';

class BankLainScreen extends StatelessWidget {
  static String routeName = "/bank_lain";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transfer"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
