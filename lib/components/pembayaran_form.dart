import 'package:flutter/material.dart';
import 'package:untar_mobile_banking/components/default_button.dart';
import 'package:untar_mobile_banking/components/form_error.dart';
import 'package:untar_mobile_banking/screens/pembayaran/pembayaran_screen.dart';
import '../constants.dart';
import '../size_config.dart';

class PembayaranForm extends StatefulWidget {
  @override
  _PembayaranFormState createState() => _PembayaranFormState();
}

class _PembayaranFormState extends State<PembayaranForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String pelanggan;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(30)),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPelangganFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(100)),
          DefaultButton(
            text: "Kirim",
            press: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, PembayaranScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPelangganFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => pelanggan = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "No. Pelanggan",
        hintText: "Masukkan Nomor Pelanggan",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}