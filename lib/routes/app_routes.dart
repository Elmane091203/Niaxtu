import 'package:flutter/material.dart';
import 'package:niaxtu/presentation/connexion_screen/conexion_screen.dart';
import 'package:niaxtu/presentation/verification_screen/verification_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String verificationScreen = '/verification_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    verificationScreen: (context) => VerificationScreen(),
    initialRoute: (context) => ConnexionScreen()
  };
}
