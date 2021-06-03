import 'package:flutter/material.dart';

import 'components/body.dart';

class LuarNegeriScreen extends StatelessWidget {
  static String routeName = "/luar_negeri";
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
