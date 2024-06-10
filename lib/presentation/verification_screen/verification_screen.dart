import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart ';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 48.h,
            vertical: 32.v,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 8.v,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Verification",
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              SizedBox(
                height: 8.v,
              ),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 25.h),
                child: Text(
                  "Un code de verification a été envoyé au +221 77 XXX XX XX",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeGray600,
                ),
              ),
              SizedBox(
                height: 50.v,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Entrez le code de verification",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(
                height: 16.v,
              ),
              CustomPinCodeTextField(
                context: context,
                onChanged: (value) {},
              ),
              SizedBox(
                height: 10.v,
              ),
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
                        text: " 00:58",
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
                onPressed: () {
                  onTapNextButton(context);
                },
              ),
              SizedBox(
                height: 15.v,
              ),
              SizedBox(
                height: 13.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 0,
                    activeDotColor: appTheme.lightBlue400,
                    dotColor: appTheme.blueGray100,
                    activeDotScale: 1.3,
                    dotHeight: 10.v,
                    dotWidth: 10.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapNextButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.informationScreen);
  }
}
