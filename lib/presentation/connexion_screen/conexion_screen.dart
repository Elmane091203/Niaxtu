import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ConnexionScreen extends StatelessWidget {
  ConnexionScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController pleaseenteryourController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFCFC),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: 375,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    73,
                  ),
                  child: Image.asset(
                    "assets/images/img_ellipse_7.png",
                    height: 147,
                    width: 171,
                  ),
                ),
                padding: EdgeInsets.all(10.0),
              ),
              SizedBox(height: 11),
              Text(
                "Bienvenue",
                style: TextStyle(
                  color: Color(0XFF180606),
                  fontSize: 26,
                  fontFamily: 'Book Antiqua',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Connexion",
                style: TextStyle(
                  color: Color(0XFF807C7C),
                  fontSize: 20,
                  fontFamily: 'Book Antiqua',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 15),
              _buildPhoneNumberSection(context),
              SizedBox(height: 7),
              _buildPasswordSection(context),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 6),
                  child: Text(
                    "Mot de passe oublié?",
                    style: TextStyle(
                      color: Color(0XFFEA4335),
                      fontSize: 16,
                      fontFamily: 'Book Antiqua',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFF29B6F6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        22,
                      ),
                    ),
                    visualDensity: const VisualDensity(
                      vertical: -4,
                      horizontal: -4,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 8,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Connexion",
                    style: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 17),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pas de compte ?",
                      style: TextStyle(
                        color: Color(0XFF606060),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6),
                      child: Text(
                        "Créer un compte",
                        style: TextStyle(
                          color: Color(0XFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            "Numero/Pseudo",
            style: TextStyle(
              color: Color(0XFF000000),
              fontSize: 18,
              fontFamily: 'Book Antiqua',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 19),
        SizedBox(
          width: 315,
          child: TextFormField(
            focusNode: FocusNode(),
            autofocus: true,
            controller: pleaseenteryourController,
            style: TextStyle(
              color: Color(0XFF807C7C),
              fontSize: 16,
              fontFamily: 'Book Antiqua',
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              hintText: "Veuillez saisir votre numero",
              hintStyle: TextStyle(
                color: Color(0XFF807C7C),
                fontSize: 16,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  6,
                ),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  6,
                ),
                borderSide: BorderSide.none,
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  6,
                ),
                borderSide: BorderSide.none,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  6,
                ),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Color(0XFFFFFCFC),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 14,
              ),
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            "Mot de passe",
            style: TextStyle(
              color: Color(0XFF000000),
              fontSize: 18,
              fontFamily: 'Book Antiqua',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 7),
        SizedBox(
          width: 315,
          child: TextFormField(
            focusNode: FocusNode(),
            autofocus: true,
            controller: passwordoneController,
            style: TextStyle(
              color: Color(0XFF807C7C),
              fontSize: 16,
              fontFamily: 'Book Antiqua',
              fontWeight: FontWeight.w400,
            ),
            textInputAction: TextInputAction.done,
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Mot de passe",
              hintStyle: TextStyle(
                color: Color(0XFF807C7C),
                fontSize: 16,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  6,
                ),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  6,
                ),
                borderSide: BorderSide.none,
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  6,
                ),
                borderSide: BorderSide.none,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  6,
                ),
                borderSide: BorderSide.none,
              ),
              suffixIcon: Container(
                margin: EdgeInsets.fromLTRB(30, 12, 14, 12),
                child: SvgPicture.asset(
                  "assets/images/img_group_8.svg",
                  height: 24,
                  width: 27,
                ),
              ),
              suffixIconConstraints: BoxConstraints(
                maxHeight: 48,
              ),
              filled: true,
              fillColor: Color(0XFFFFFCFC),
              isDense: true,
              contentPadding: EdgeInsets.only(
                left: 30,
                top: 14,
                bottom: 14,
              ),
            ),
          ),
        )
      ],
    );
  }
}
