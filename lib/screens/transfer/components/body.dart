import 'package:flutter/material.dart';
import 'package:untar_mobile_banking/screens/bank_lain/bank_lain_screen.dart';
import 'package:untar_mobile_banking/screens/luar_negeri/luar_negeri_screen.dart';
import 'package:untar_mobile_banking/screens/untar/untar_screen.dart';
import 'transfer_menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          SizedBox(height: 30),
          TransferMenu(
            text: "Rekening Bank Ratnu",
            press: () =>
                {Navigator.pushNamed(context, BankUntarScreen.routeName)},
          ),
          TransferMenu(
            text: "Rekening Bank Lain",
            press: () {
              Navigator.pushNamed(context, BankLainScreen.routeName);
            },
          ),
          TransferMenu(
            text: "Rekening Bank Luar negeri",
            press: () {
              Navigator.pushNamed(context, LuarNegeriScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}