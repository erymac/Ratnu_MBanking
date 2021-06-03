import 'package:flutter/material.dart';

import 'components/body.dart';

class PembayaranScreen extends StatelessWidget {
  static String routeName = "/menu_pembayaran";
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
