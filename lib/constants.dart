import 'package:flutter/material.dart';
import 'size_config.dart';

const kPrimaryColor = Colors.red;
const kTextColor = Color(0xFF757575);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final heading1 = TextStyle(
  fontSize: getProportionateScreenWidth(22),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 2.5,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Silahkan Masukkan Email Anda ";
const String kInvalidEmailError = "Silahkan Masukkan Kembali Email Anda";
const String kPassNullError = "Silahkan Masukkan Password Anda";
const String kShortPassError = "Password Anda Terlalu Pendek";
const String kMatchPassError = "Password Tidak Sama";
const String kNamelNullError = "Silahkan Masukkan Nama Anda";
const String kNumberNullError = "Kolom ini Wajib diisi";
const String kAddressNullError = "Silahkan Masukkan Alamat Anda ";

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
