import 'package:flutter/widgets.dart';
import 'package:untar_mobile_banking/screens/ganti_pin/ganti_pin_screen.dart';
import 'package:untar_mobile_banking/screens/info_saldo/info_saldo_screen.dart';

import 'screens/bank_lain/bank_lain_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/luar_negeri/luar_negeri_screen.dart';
import 'screens/pam/pam_screen.dart';
import 'screens/pembayaran/pembayaran_screen.dart';
import 'screens/pendidikan/pendidikan_screen.dart';
import 'screens/pln/pln_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/pulsa/pulsa_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/transfer/transfer_screen.dart';
import 'screens/untar/untar_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  InfoSaldoScreen.routeName: (context) => InfoSaldoScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  GantiPinScreen.routeName: (context) => GantiPinScreen(),
  TransferScreen.routeName: (context) => TransferScreen(),
  BankUntarScreen.routeName: (context) => BankUntarScreen(),
  BankLainScreen.routeName: (context) => BankLainScreen(),
  LuarNegeriScreen.routeName: (context) => LuarNegeriScreen(),
  PembayaranScreen.routeName: (context) => PembayaranScreen(),
  PendidikanScreen.routeName: (context) => PendidikanScreen(),
  PAMScreen.routeName: (context) => PAMScreen(),
  PLNScreen.routeName: (context) => PLNScreen(),
  PulsaScreen.routeName: (context) => PulsaScreen(),
};
