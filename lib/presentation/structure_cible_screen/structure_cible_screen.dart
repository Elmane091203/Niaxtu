import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:niaxtu/core/app_export.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_search_view.dart';
//import '../../widgets/custom_drop';

class StructureCibleScreen extends StatelessWidget {
  StructureCibleScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  List<String> dropdownItemList = ["Item one", "Item two", "Item three"];

  List<String> dropdownItemList1 = ["Item one", "Item two", "Item three"];

  List<String> dropdownItemList2 = ["Item one", "Item two", "Item three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 23.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLogo,
                height: 147.v,
                width: 171.h,
                radius: BorderRadius.circular(
                  73.h,
                ),
              ),
              SizedBox(height: 22.v),
              Text(
                "Emission d'une Plainte",
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 12.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 102.h),
                  child: Text(
                    "Structure cible",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 14.h),
                  child: CustomSearchView(
                    width: 224.h,
                    controller: searchController,
                    hintText: "Recherche...",
                    alignment: Alignment.centerRight,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              _buildMinistreSection(context),
              SizedBox(height: 7.v),
              _buildDirectionSection(context),
              SizedBox(height: 8.v),
              _buildServiceSection(context),
              SizedBox(height: 99.v),
              CustomElevatedButton(
                text: "Suivant",
                margin: EdgeInsets.symmetric(horizontal: 25.h),
                onPressed: () {
                  onTapSuivant(context);
                },
              ),
              SizedBox(height: 5.v),
              SizedBox(
                height: 13.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 4,
                  effect: ScrollingDotsEffect(
                    spacing: 7,
                    activeDotColor: appTheme.lightBlue400,
                    dotColor: appTheme.blueGray100,
                    activeDotScale: 1.3,
                    dotHeight: 10.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMinistreSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ministere",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 9.v),
          CustomDropDown(
            icon: Container(
              margin: EdgeInsets.symmetric(horizontal: 19.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdown,
                height: 7.v,
                width: 12.h,
              ),
            ),
            hintText: "Veuillez choisir le ministere",
            items: dropdownItemList,
          ),
        ],
      ),
    );
  }

  Widget _buildDirectionSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Direction",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 9.v),
          CustomDropDown(
            icon: Container(
              margin: EdgeInsets.symmetric(horizontal: 19.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdown,
                height: 7.v,
                width: 12.h,
              ),
            ),
            hintText: "Veuillez choisir la Direction",
            items: dropdownItemList1,
          ),
        ],
      ),
    );
  }

  Widget _buildServiceSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Service",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 9.v),
          CustomDropDown(
            icon: Container(
              margin: EdgeInsets.symmetric(horizontal: 19.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdown,
                height: 7.v,
                width: 12.h,
              ),
            ),
            hintText: "Veuillez choisir le service",
            items: dropdownItemList2,
          ),
        ],
      ),
    );
  }

  onTapSuivant(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.typologieScreen);
  }
}
