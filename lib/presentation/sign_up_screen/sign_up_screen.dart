import 'package:mindcare_plus/widgets/custom_text_form_field.dart';
import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 58.v,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 1.v,
                            bottom: 2.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "MindCare",
                                  style: CustomTextStyles.headlineSmallff0040dd,
                                ),
                                TextSpan(
                                  text: "+",
                                  style: CustomTextStyles.headlineSmallff0040dd,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 31.v,
                          width: 33.h,
                        ),
                      ],
                    ),
                    SizedBox(height: 21.v),
                    Text(
                      "Create an account",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 13.v),
                    Text(
                      "Let’s get you started. Please enter your details",
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 35.v),
                    _buildInputWithLabel(context),
                    SizedBox(height: 21.v),
                    _buildInputFieldBase(context, 'Password'),
                    SizedBox(height: 21.v),
                    _buildInputFieldBase(context, 'Confirm Password'),
                    SizedBox(height: 23.v),
                    CustomOutlinedButton(
                      text: "Continue",
                      buttonStyle: CustomButtonStyles.fillBlue,
                    ),
                    SizedBox(height: 41.v),
                    Container(
                      width: 342.h,
                      margin: EdgeInsets.symmetric(horizontal: 8.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "By clicking “Continue”, you agree to accept our ",
                              style: CustomTextStyles.bodyLargeff667084,
                            ),
                            TextSpan(
                              text: "Privacy Policy",
                              style: CustomTextStyles.bodyLargeff0040dd,
                            ),
                            TextSpan(
                              text: ", and ",
                              style: CustomTextStyles.bodyLargeff667084,
                            ),
                            TextSpan(
                              text: "Terms of Service ",
                              style: CustomTextStyles.bodyLargeff0040dd,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 50.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account? ",
                            style: CustomTextStyles.bodyLargeff667084,
                          ),
                          TextSpan(
                            text: "Sign In",
                            style: CustomTextStyles.titleMediumff0040dd,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputWithLabel(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: CustomTextStyles.titleSmallBluegray80001,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: emailController,
          hintText: "example@email.com",
          textInputType: TextInputType.emailAddress,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(14.h, 18.v, 8.h, 18.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgMail,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputFieldBase(BuildContext context, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: CustomTextStyles.titleSmallBluegray80001,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: passwordController,
          hintText: "8 characters minimum",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(14.h, 18.v, 8.h, 18.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgUnlock,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 18.v, 14.h, 18.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEyeGray900,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          obscureText: true,
          contentPadding: EdgeInsets.symmetric(vertical: 18.v),
        ),
        SizedBox(height: 9.v),
      ],
    );
  }
}
