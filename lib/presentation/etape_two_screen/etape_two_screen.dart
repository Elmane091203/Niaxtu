import 'package:flutter/material.dart';
import 'package:niaxtu/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:niaxtu/core/app_export.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import '../../widgets/custom_elevated_button.dart';

class EtapeTwoScreen extends StatelessWidget {
  const EtapeTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 31.v),
              CustomImageView(
                imagePath: ImageConstant.imgLogo,
                height: 147.v,
                width: 171.h,
                radius: BorderRadius.circular(71.h),
              ),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 71.h),
                  child: Text(
                    "Verification",
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Container(
                width: 263.h,
                margin: EdgeInsets.symmetric(horizontal: 25.h),
                child: Text(
                  "Un code de verification a été envoyé au +221 77 XXX XX XX",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeGray600,
                ),
              ),
              SizedBox(height: 45.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Code de vérification",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 12.v),
              CustomPinCodeTextField(
                context: context,
                onChanged: (value) {},
              ),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerRight,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Renvoyer",
                        style: CustomTextStyles.titleLargeBookAntiquaPrimary,
                      ),
                      TextSpan(
                        text: "00:50",
                        style: CustomTextStyles
                            .titleLargeBookAntiquaDeeporangeA200,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                text: "Suivant",
                margin: EdgeInsets.only(
                  left: 8.h,
                  right: 7.h,
                ),
                onPressed: () {
                  onTapNextButton(context);
                },
              ),
              SizedBox(height: 15.v),
              SizedBox(
                height: 13.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 2,
                  effect: ScrollingDotsEffect(
                    activeDotColor: Color(0X1212121D),
                    dotHeight: 13.v,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  onTapNextButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }
}
