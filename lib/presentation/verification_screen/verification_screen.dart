import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFCFC),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: 375,
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 32,
          ),
          child: Column(
            children: [
              SizedBox(height: 31),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  73,
                ),
                child: Image.asset(
                  "assets/images/img_ellipse_7.png",
                  height: 147,
                  width: 171,
                ),
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 71),
                  child: Text(
                    "Vérification",
                    style: TextStyle(
                      color: Color(0XFF000000),
                      fontSize: 26,
                      fontFamily: 'Book Antiqua',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 7),
              Container(
                width: 245,
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Un code de verification a été \nenvoyé au +221 77 XXX XX XX",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF817C7C),
                    fontSize: 18,
                    fontFamily: 'Book Antiqua',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 47),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Code de vérification",
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 18,
                    fontFamily: 'Book Antiqua',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 12),
              PinCodeTextField(
                appContext: context,
                length: 4,
                obscureText: false,
                obscuringCharacter: '*',
                keyboardType: TextInputType.number,
                autoDismissKeyboard: true,
                enableActiveFill: true,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                onChanged: (value) {},
                pinTheme: PinTheme(
                  fieldHeight: 52,
                  fieldWidth: 52,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                  selectedFillColor: Color(0XFFE5E5E5),
                  activeFillColor: Color(0XFFE5E5E5),
                  inactiveFillColor: Color(0XFFE5E5E5),
                  inactiveColor: Color(0X1212121D),
                  selectedColor: Color(0X1212121D),
                  activeColor: Color(0X1212121D),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Renvoyer :",
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 20,
                          fontFamily: 'Book Antiqua',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: " 00:50",
                        style: TextStyle(
                          color: Color(0XFFEE6B31),
                          fontSize: 20,
                          fontFamily: 'Book Antiqua',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
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
}
