import 'package:flutter/material.dart';
import 'package:untar_mobile_banking/components/default_button.dart';
import 'package:untar_mobile_banking/components/form_error.dart';
import 'package:untar_mobile_banking/screens/transfer/transfer_screen.dart';
import '../constants.dart';
import '../size_config.dart';

class TransferForm extends StatefulWidget {
  @override
  _TransferFormState createState() => _TransferFormState();
}

class _TransferFormState extends State<TransferForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String rekening;

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
          buildRekeningFormField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          buildNominalFormField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Kirim",
            press: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, TransferScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildRekeningFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => rekening = newValue,
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
        labelText: "No. Rekening Tujuan",
        hintText: "Masukkan Nomor Rekening",
        floatingLabelBehavior: FloatingLabelBehavior.always,        
      ),
    );
  }

  TextFormField buildNominalFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => rekening = newValue,
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