import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:niaxtu/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ComplainteScreen extends StatelessWidget {
  ComplainteScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController edittextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35),
              CustomImageView(
                imagePath: ImageConstant.imgLogo,
                height: 147.v,
                width: 171.h,
                radius: BorderRadius.circular(71.h),
              ),
              Spacer(
                flex: 54,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2),
                child: Text(
                  "Emission d’une Complainte",
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 28,
                    fontFamily: 'Book Antiqua',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 6),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 265,
                  margin: EdgeInsets.only(
                    left: 42,
                    right: 40,
                  ),
                  child: Text(
                    "Veuillez  joindre la localisation et\nles fichiers",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0XFF000000),
                      fontSize: 18,
                      fontFamily: 'Book Antiqua',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 23),
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "GPS",
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
                margin: EdgeInsets.only(left: 14),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0XFF29B6F6),
                  borderRadius: BorderRadius.circular(
                    22,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0X3F000000),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(
                        0,
                        1,
                      ),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 3),
                      child: SizedBox(
                        height: 27,
                        width: 31,
                        child: SvgPicture.asset(
                          "assets/images/img_vector.svg",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5,
                        right: 4,
                        bottom: 1,
                      ),
                      child: Text(
                        "localisation...",
                        style: TextStyle(
                          color: Color(0XFFFFFFFF),
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18),
              _buildDescriptionSection(context),
              SizedBox(height: 11),
              _buildFileAttachmentSection(context),
              Spacer(
                flex: 45,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 48,
                  margin: EdgeInsets.symmetric(horizontal: 26),
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
                        vertical: 9,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.accueilScreen);
                    },
                    child: Text(
                      "Enregistrer",
                      style: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 13,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 4,
                    effect: ScrollingDotsEffect(
                      spacing: 10,
                      activeDotColor: Color(0XFF29B6F6),
                      dotColor: Color(0XFFD9D9D9),
                      activeDotScale: 1.3,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
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
  Widget _buildDescriptionSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2),
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "Description localisation",
              style: TextStyle(
                color: Color(0XFF000000),
                fontSize: 18,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 7),
          Container(
            width: 315,
            margin: EdgeInsets.only(left: 14),
            child: TextFormField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: edittextController,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
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
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFileAttachmentSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2),
      padding: EdgeInsets.symmetric(horizontal: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1),
            child: Text(
              "Fichier",
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
            width: 170,
            padding: EdgeInsets.symmetric(
              horizontal: 4,
              vertical: 13,
            ),
            decoration: BoxDecoration(
              color: Color(0XFFFDFBFB),
              borderRadius: BorderRadius.circular(
                6,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0X3F000000),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(
                    0,
                    1,
                  ),
                )
              ],
            ),
            child: Text(
              "Joindre des fichiers......",
              style: TextStyle(
                color: Color(0XFF000000),
                fontSize: 16,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
