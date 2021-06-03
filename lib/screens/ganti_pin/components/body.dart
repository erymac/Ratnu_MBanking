import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untar_mobile_banking/components/default_button.dart';
import 'package:untar_mobile_banking/components/form_error.dart';
import 'package:untar_mobile_banking/screens/home/home_screen.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String pin;

  void addError({String error}) {
    if (!errors.contains(error)) {
      errors.add(error);
    }
  }

  void removeError({String error}) {
    if (errors.contains(error)) {
      errors.remove(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text("Ganti PIN", style: heading1),
                  SizedBox(height: SizeConfig.screenHeight * 0.06),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  TextFormField(
                    obscureText: true,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    onSaved: (newValue) => pin = newValue,
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
                        labelText: "Pin Lama ",
                        hintText: " Input 6 Digit"),
                  ),
                  SizedBox(height: getProportionateScreenHeight(40)),
                  TextFormField(
                    obscureText: true,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    onSaved: (newValue) => pin = newValue,
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
                        labelText: "Pin Baru", hintText: " Input 6 Digit"),
                  ),
                  SizedBox(height: getProportionateScreenHeight(40)),
                  TextFormField(
                    obscureText: true,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    onSaved: (newValue) => pin = newValue,
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
                        labelText: "Konfirmasi Pin Baru",
                        hintText: " Input 6 Digit "),
                  ),
                  SizedBox(height: getProportionateScreenHeight(10)),
                  FormError(errors: errors),
                  SizedBox(height: getProportionateScreenHeight(40)),

                  DefaultButton(
                    text: "Simpan",
                    press: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.pushNamed(context, HomeScreen.routeName);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
