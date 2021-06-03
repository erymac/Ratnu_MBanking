import 'package:flutter/material.dart';

import 'components/body.dart';

class InfoSaldoScreen extends StatelessWidget {
  static String routeName = "/info_saldo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info Saldo"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
