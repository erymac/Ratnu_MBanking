import 'package:untar_mobile_banking/screens/pendidikan/pendidikan_screen.dart';
import 'package:flutter/material.dart';
import 'package:untar_mobile_banking/screens/pam/pam_screen.dart';
import 'package:untar_mobile_banking/screens/pln/pln_screen.dart';
import 'package:untar_mobile_banking/screens/pulsa/pulsa_screen.dart';
import 'menu_pembayaran.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          SizedBox(height: 30),
          PembayaranMenu(
            text: "Pendidikan",
            press: () =>
                {Navigator.pushNamed(context, PendidikanScreen.routeName)},
          ),
          PembayaranMenu(
            text: "PAM",
            press: () => {Navigator.pushNamed(context, PAMScreen.routeName)},
          ),
          PembayaranMenu(
            text: "PLN",
            press: () {
              Navigator.pushNamed(context, PLNScreen.routeName);
            },
          ),
          PembayaranMenu(
            text: "Pulsa",
            press: () {
              Navigator.pushNamed(context, PulsaScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}