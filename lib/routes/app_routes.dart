import 'package:flutter/material.dart';
import 'package:niaxtu/presentation/accueil_screen/accueil_screen.dart';
import 'package:niaxtu/presentation/complainte_screen/complainte_screen.dart';
import 'package:niaxtu/presentation/connexion_screen/conexion_screen.dart';
import 'package:niaxtu/presentation/etape_one_screen/etape_one_screen.dart';
import 'package:niaxtu/presentation/etape_two_screen/etape_two_screen.dart';
import 'package:niaxtu/presentation/identification_screen/identification_screen.dart';
import 'package:niaxtu/presentation/incription_screen/inscription_screen.dart';
import 'package:niaxtu/presentation/mot_de_passe_screen/mot_de_passe_screen.dart';
import 'package:niaxtu/presentation/structure_cible_screen/structure_cible_screen.dart';
import 'package:niaxtu/presentation/typologie_screen/typologie_screen.dart';
import 'package:niaxtu/presentation/verification_screen/verification_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String verificationScreen = '/verification_screen';

  static const String initialRoute = '/initialRoute';
  static const String structureCibleScreen = '/structure_cible_screen';
  static const String etapeOneScreen = '/etape_one_screen';
  static const String etapeTwoScreen = '/etape_two_screen';
  static const String forgotPasswordScreen = '/forgot_password_screen';
  static const String menuScreen = '/menu_screen';
  static const String connexionScreen = '/connexion_screen';
  static const String inscriptionScreen = '/inscription screen';
  static const String informationScreen = '/information_screen';
  static const String motDePasseScreen = '/mot_de_passe_screen';
  static const String accueilScreen = '/accueil_screen';
  static const String typologieScreen = '/typologie_screen';
  static const String complainteScreen = '/complainte_screen';
  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    structureCibleScreen: (context) => StructureCibleScreen(),
    etapeOneScreen: (context) => EtapeOneScreen(),
    etapeTwoScreen: (context) => EtapeTwoScreen(),
    forgotPasswordScreen: (context) => EtapeOneScreen(),
    accueilScreen: (context) => AccueilScreen(),
    menuScreen: (context) => EtapeOneScreen(),
    connexionScreen: (context) => ConnexionScreen(),
    inscriptionScreen: (context) => InscriptionScreen(),
    verificationScreen: (context) => VerificationScreen(),
    informationScreen: (context) => IdentificationScreen(),
    motDePasseScreen: (context) => MotDePasseScreen(),
    typologieScreen: (context) => TypologieScreen(),
    complainteScreen: (context) => ComplainteScreen(),
    appNavigationScreen: (context) => EtapeOneScreen(),
    initialRoute: (context) => ConnexionScreen(),
  };
}
