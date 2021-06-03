import 'package:flutter/material.dart';
import 'package:untar_mobile_banking/screens/ganti_pin/ganti_pin_screen.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          SizedBox(height: 25),
          ProfilePic(),
          SizedBox(height: 20),
          Text(
            "Nama Lengkap",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
          ),
          SizedBox(height: 80),
          ProfileMenu(
            text: "Ganti PIN",
            icon: "assets/icons/Camera Icon.svg",
            press: () =>
                {Navigator.pushNamed(context, GantiPinScreen.routeName)},
          ),
        ],
      ),
    );
  }
}
