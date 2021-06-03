import 'package:flutter/material.dart';
import 'package:untar_mobile_banking/screens/sign_in/components/body.dart';
import 'package:untar_mobile_banking/size_config.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Masuk"),
      ),
      body: Body(),
    );
  }
}
