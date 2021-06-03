import 'package:flutter/material.dart';
import 'package:untar_mobile_banking/components/default_button.dart';
import 'package:untar_mobile_banking/components/form_error.dart';
import 'package:untar_mobile_banking/screens/pembayaran/pembayaran_screen.dart';
import '../constants.dart';
import '../size_config.dart';

class PulsaForm extends StatefulWidget {
  @override
  _PulsaFormState createState() => _PulsaFormState();
}

class _PulsaFormState extends State<PulsaForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String pulsa;
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
          buildPulsaFormField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          buildNominalFormField(),
          SizedBox(height: getProportionateScreenHeight(10)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(80)),
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

  TextFormField buildPulsaFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => pulsa = newValue,
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
        labelText: "No. Handphone",
        hintText: "Masukkan Nomor Handphone",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildNominalFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => pulsa = newValue,
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
        labelText: "Nominal",
        hintText: "Masukkan Jumlah Uang",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}