import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:niaxtu/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MotDePasseScreen extends StatelessWidget {
  MotDePasseScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController reenterpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFCFC),
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 81),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 130),
                        child: SizedBox(
                          height: 40,
                          width: 30,
                          child: SvgPicture.asset(
                            "assets/images/img_vector_1.svg",
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLogo,
                        height: 147.v,
                        width: 171.h,
                        radius: BorderRadius.circular(71.h),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Création de mot de passe",
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 26,
                  fontFamily: 'Book Antiqua',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Password",
                style: TextStyle(
                  color: Color(0XFF817C7C),
                  fontSize: 20,
                  fontFamily: 'Book Antiqua',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 55),
              _buildPasswordCreationSection(context),
              SizedBox(height: 9),
              _buildConfirmPasswordSection(context),
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                margin: EdgeInsets.symmetric(horizontal: 20),
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
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.initialRoute);
                  },
                  child: Text(
                    "Créer",
                    style: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 13,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 9,
                    activeDotColor: Color(0XFF29B6F6),
                    dotColor: Color(0XFFD9D9D9),
                    activeDotScale: 1.3,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordCreationSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 17),
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
          SizedBox(height: 5),
          Container(
            width: 315,
            margin: EdgeInsets.only(left: 9),
            child: TextFormField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: reenterpasswordController,
              style: TextStyle(
                color: Color(0XFF817C7C),
                fontSize: 16,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Mot de passe  ",
                hintStyle: TextStyle(
                  color: Color(0XFF817C7C),
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
                  margin: EdgeInsets.fromLTRB(30, 12, 18, 12),
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
                fillColor: Color(0XFFFDFBFB),
                isDense: true,
                contentPadding: EdgeInsets.only(
                  left: 25,
                  top: 14,
                  bottom: 14,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "Confirmer le mot de passe",
              style: TextStyle(
                color: Color(0XFF000000),
                fontSize: 18,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 315,
            margin: EdgeInsets.only(left: 9),
            child: TextFormField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: confirmpasswordController,
              style: TextStyle(
                color: Color(0XFF817C7C),
                fontSize: 16,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
              textInputAction: TextInputAction.done,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Confirmer votre mot de passe",
                hintStyle: TextStyle(
                  color: Color(0XFF817C7C),
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
                  margin: EdgeInsets.fromLTRB(25, 12, 18, 12),
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
                fillColor: Color(0XFFFDFBFB),
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
      ),
    );
  }
}
