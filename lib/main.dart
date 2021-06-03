import 'package:flutter/material.dart';
import 'package:untar_mobile_banking/screens/sign_in/sign_in_screen.dart';
import 'package:provider/provider.dart';
import 'models/authentication.dart';
import 'routes.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Authentication(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme(),
        // home: SplashScreen(),
        initialRoute: SignInScreen.routeName,
        routes: routes,
      ),
    );
  }
}
