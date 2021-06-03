import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 140.0)),
            Text(
              'Info Saldo Rekening Anda',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
            'Rp. 9.999.999.999.999.999',
              style: TextStyle(fontSize: 30.0),
            )
          ],
        ),
      ),
    );
  }
}
