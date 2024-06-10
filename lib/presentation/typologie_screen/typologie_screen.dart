import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:niaxtu/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class TypologieScreen extends StatelessWidget {
  TypologieScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  TextEditingController groupfourController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 32),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 9),
                  child: SizedBox(
                    height: 5,
                    width: 20,
                    child: SvgPicture.asset(
                      "assets/images/img_arrow_3.svg",
                    ),
                  ),
                ),
              ),
              Spacer(),
              Text(
                "Emission d’une Complainte",
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 28,
                  fontFamily: 'Book Antiqua',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 12),
              Text(
                " Typologie ",
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 18,
                  fontFamily: 'Book Antiqua',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 19),
              _buildComplaintTypeSection(context),
              SizedBox(height: 10),
              _buildTargetTypeSection(context),
              SizedBox(height: 22),
              _buildPrivateStructureSection(context),
              SizedBox(height: 51),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                margin: EdgeInsets.symmetric(horizontal: 25),
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
                    Navigator.pushNamed(context, AppRoutes.complainteScreen);
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
              SizedBox(height: 5),
              SizedBox(
                height: 13,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 4,
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
  Widget _buildComplaintTypeSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1),
            child: Text(
              "Type de plainte",
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
            child: DropdownButtonFormField(
              focusNode: FocusNode(),
              autofocus: true,
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 19),
                child: SvgPicture.asset(
                  "assets/images/img_arrowdown.svg",
                  height: 7,
                  width: 12,
                ),
              ),
              style: TextStyle(
                color: Color(0XFFC4C4C4),
                fontSize: 16,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
              onChanged: (value) {},
              items: dropdownItemList
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                  ),
                );
              }).toList(),
              decoration: InputDecoration(
                hintText: "Veuillez  choisir le type de plainte",
                hintStyle: TextStyle(
                  color: Color(0XFFC4C4C4),
                  fontSize: 16,
                  fontFamily: 'Book Antiqua',
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Color(0XFFFDFBFB),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(19, 15, 19, 12),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTargetTypeSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Type de cible",
            style: TextStyle(
              color: Color(0XFF000000),
              fontSize: 18,
              fontFamily: 'Book Antiqua',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 6),
          SizedBox(
            width: 315,
            child: DropdownButtonFormField(
              focusNode: FocusNode(),
              autofocus: true,
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: SvgPicture.asset(
                  "assets/images/img_arrowdown.svg",
                  height: 7,
                  width: 12,
                ),
              ),
              style: TextStyle(
                color: Color(0XFFC4C4C4),
                fontSize: 16,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
              onChanged: (value) {},
              items: dropdownItemList1
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                  ),
                );
              }).toList(),
              decoration: InputDecoration(
                hintText: "Veuillez  choisir le type de cible",
                hintStyle: TextStyle(
                  color: Color(0XFFC4C4C4),
                  fontSize: 16,
                  fontFamily: 'Book Antiqua',
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Color(0XFFFDFBFB),
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(16, 18, 16, 9),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrivateStructureSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Structure Privée",
              style: TextStyle(
                color: Color(0XFF000000),
                fontSize: 18,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 14),
          Container(
            width: 283,
            margin: EdgeInsets.only(
              left: 27,
              right: 1,
            ),
            child: TextFormField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: groupfourController,
              style: TextStyle(
                color: Color(0XFFC4C4C4),
                fontSize: 16,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                hintText: "Nom de la structure privée",
                hintStyle: TextStyle(
                  color: Color(0XFFC4C4C4),
                  fontSize: 16,
                  fontFamily: 'Book Antiqua',
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    23,
                  ),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    23,
                  ),
                  borderSide: BorderSide.none,
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    23,
                  ),
                  borderSide: BorderSide.none,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    23,
                  ),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color(0XFFFDFBFB),
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 13,
                ),
              ),
            ),
          ),
          SizedBox(height: 14),
          Container(
            width: 283,
            margin: EdgeInsets.only(
              left: 27,
              right: 1,
            ),
            child: TextFormField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: phoneController,
              style: TextStyle(
                color: Color(0XFFC4C4C4),
                fontSize: 16,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                hintText: "Numero Telephone",
                hintStyle: TextStyle(
                  color: Color(0XFFC4C4C4),
                  fontSize: 16,
                  fontFamily: 'Book Antiqua',
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    23,
                  ),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    23,
                  ),
                  borderSide: BorderSide.none,
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    23,
                  ),
                  borderSide: BorderSide.none,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    23,
                  ),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color(0XFFFDFBFB),
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 13,
                ),
              ),
            ),
          ),
          SizedBox(height: 14),
          Container(
            width: 283,
            margin: EdgeInsets.only(
              left: 27,
              right: 1,
            ),
            child: TextFormField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: emailController,
              style: TextStyle(
                color: Color(0XFFC4C4C4),
                fontSize: 16,
                fontFamily: 'Book Antiqua',
                fontWeight: FontWeight.w400,
              ),
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                hintText: "  Email de la structure privée",
                hintStyle: TextStyle(
                  color: Color(0XFFC4C4C4),
                  fontSize: 16,
                  fontFamily: 'Book Antiqua',
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    23,
                  ),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    23,
                  ),
                  borderSide: BorderSide.none,
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    23,
                  ),
                  borderSide: BorderSide.none,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    23,
                  ),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color(0XFFFDFBFB),
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 13,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
