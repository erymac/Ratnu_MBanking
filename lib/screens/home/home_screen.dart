import 'package:flutter/material.dart';
import 'package:untar_mobile_banking/screens/home/components/dashboard.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashboardHomeScreen(),
    );
  }
}
