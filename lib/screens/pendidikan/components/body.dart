import 'package:untar_mobile_banking/components/default_button.dart';
import 'package:untar_mobile_banking/components/form_error.dart';
import 'package:untar_mobile_banking/screens/pembayaran/pembayaran_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String kPendidikan;
  String nominal;

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
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.03,
                  ),
                  Text("Pendidikan", style: heading1),
                  SizedBox(height: SizeConfig.screenHeight * 0.06),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  TextFormField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    onSaved: (newValue) => kPendidikan = newValue,
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
                      labelText: "Kode Perusahaan",
                      hintText: " dalam bentuk angka ",
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(50)),
                  TextFormField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    onSaved: (newValue) => nominal = newValue,
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
                      hintText: " Masukan Sesuai Jumlah Nominal Yang Ada",
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(10)),
                  FormError(errors: errors),
                  SizedBox(height: getProportionateScreenHeight(80)),
                  DefaultButton(
                    text: "Kirim",
                    press: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.pushNamed(
                            context, PembayaranScreen.routeName);
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
