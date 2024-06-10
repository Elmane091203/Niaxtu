import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:niaxtu/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class IdentificationScreen extends StatelessWidget {
  IdentificationScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController firstnamesoneController = TextEditingController();

  TextEditingController lastnameoneController = TextEditingController();

  TextEditingController nicknameoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

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
              CustomImageView(
                imagePath: ImageConstant.imgLogo,
                height: 147.v,
                width: 171.h,
                radius: BorderRadius.circular(71.h),
              ),
              SizedBox(height: 8),
              Text(
                "Identification",
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 26,
                  fontFamily: 'Book Antiqua',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 11),
              SizedBox(
                width: 210,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Veuillez vous identifier\n",
                        style: TextStyle(
                          color: Color(0XFF817C7C),
                          fontSize: 18,
                          fontFamily: 'Book Antiqua',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "Seul le pseudo sera visible",
                        style: TextStyle(
                          color: Color(0XFFEA4335),
                          fontSize: 18,
                          fontFamily: 'Book Antiqua',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 17),
              _buildFirstNameSection(context),
              SizedBox(height: 5),
              _buildLastNameSection(context),
              SizedBox(height: 5),
              _buildNicknameSection(context),
              SizedBox(height: 5),
              _buildEmailSection(context),
              SizedBox(height: 36),
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
                    Navigator.pushNamed(context, AppRoutes.motDePasseScreen);
                  },
                  child: Text(
                    "Suivant",
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
  Widget _buildFirstNameSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 9),
      padding: EdgeInsets.symmetric(horizontal: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 9),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Prénom(s)",
                    style: TextStyle(
                      color: Color(0XFF000000),
                      fontSize: 18,
                      fontFamily: 'Book Antiqua',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: "*",
                    style: TextStyle(
                      color: Color(0XFFEA4335),
                      fontSize: 18,
                      fontFamily: 'Book Antiqua',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 9),
          Container(
            width: 315,
            margin: EdgeInsets.only(left: 9),
            child: TextFormField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: firstnamesoneController,
              style: TextStyle(
                color: Color(0XFF817C7C),
                fontSize: 16,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                hintText: "Prénom(s)",
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
                filled: true,
                fillColor: Color(0XFFFDFBFB),
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLastNameSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 9),
      padding: EdgeInsets.symmetric(horizontal: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Nom",
                    style: TextStyle(
                      color: Color(0XFF000000),
                      fontSize: 18,
                      fontFamily: 'Book Antiqua',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: "*",
                    style: TextStyle(
                      color: Color(0XFFEA4335),
                      fontSize: 18,
                      fontFamily: 'Book Antiqua',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 9),
          Container(
            width: 315,
            margin: EdgeInsets.only(left: 9),
            child: TextFormField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: lastnameoneController,
              style: TextStyle(
                color: Color(0XFF817C7C),
                fontSize: 16,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                hintText: "Nom",
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
                filled: true,
                fillColor: Color(0XFFFDFBFB),
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNicknameSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 9),
      padding: EdgeInsets.symmetric(horizontal: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Pseudo",
                    style: TextStyle(
                      color: Color(0XFF000000),
                      fontSize: 18,
                      fontFamily: 'Book Antiqua',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: "*",
                    style: TextStyle(
                      color: Color(0XFFEA4335),
                      fontSize: 18,
                      fontFamily: 'Book Antiqua',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 9),
          Container(
            width: 315,
            margin: EdgeInsets.only(left: 9),
            child: TextFormField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: nicknameoneController,
              style: TextStyle(
                color: Color(0XFF817C7C),
                fontSize: 16,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                hintText: "Pseudo",
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
                filled: true,
                fillColor: Color(0XFFFDFBFB),
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              "Email",
              style: TextStyle(
                color: Color(0XFF000000),
                fontSize: 18,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 9),
          Container(
            width: 315,
            margin: EdgeInsets.only(left: 11),
            child: TextFormField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: emailController,
              style: TextStyle(
                color: Color(0XFF817C7C),
                fontSize: 16,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                hintText: "Email",
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
                filled: true,
                fillColor: Color(0XFFFDFBFB),
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
