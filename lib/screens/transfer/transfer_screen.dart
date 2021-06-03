import 'package:flutter/material.dart';
import 'components/body.dart';

class TransferScreen extends StatelessWidget {
  static String routeName = "/transfer_menu";
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