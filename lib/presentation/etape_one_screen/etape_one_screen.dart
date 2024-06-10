import 'package:flutter/material.dart';
import 'package:niaxtu/core/app_export.dart';
import 'package:niaxtu/theme/theme_helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class EtapeOneScreen extends StatefulWidget {
  const EtapeOneScreen({super.key});

  @override
  State<EtapeOneScreen> createState() => _EtapeOneScreenState();
}

class _EtapeOneScreenState extends State<EtapeOneScreen> {
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: appTheme.whiteA700,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: SizeUtils.height,
            child: Form(
              key: _formkey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 32.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(right: 81.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                    SizedBox(height: 12.v),
                    Text(
                      "Mot de passe oublier",
                      style: theme.textTheme.headlineMedium,
                    ),
                    SizedBox(height: 6.v),
                    Container(
                      width: 263.h,
                      margin: EdgeInsets.symmetric(horizontal: 36.h),
                      child: Text(
                        "Veuillez indiquer le numero de telephone",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLargeGray600,
                      ),
                    ),
                    SizedBox(height: 47.v),
                    _buildPhoneNumberInputSection(context),
                    Spacer(),
                    CustomElevatedButton(
                      text: "Suivant",
                      margin: EdgeInsets.symmetric(horizontal: 20.h),
                      onPressed: () {
                        onTapSuivant(context);
                      },
                    ),
                    SizedBox(
                      height: 15.v,
                    ),
                    SizedBox(
                      height: 13.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 2,
                        effect: ScrollingDotsEffect(
                            activeDotColor: Color(0X1212121D), dotHeight: 13.v),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    ));
  }

  Widget _buildPhoneNumberInputSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 11.v),
            child: Text(
              "Numero de Telephone",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(
            height: 7.v,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.v),
            child: CustomTextFormField(
              controller: phoneController,
              hintText: "Numero de Telephone",
              hintStyle: CustomTextStyles.bodyLarge16,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.phone,
              obscureText: false,
            ),
          )
        ],
      ),
    );
  }

  onTapSuivant(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.etapeTwoScreen);
  }
}
