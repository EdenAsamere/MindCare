import 'package:mindcare_plus/widgets/custom_text_form_field.dart';
import 'package:mindcare_plus/widgets/custom_checkbox_button.dart';
import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberfordays = false;

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
                                  text: "MediCare",
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
                    SizedBox(height: 24.v),
                    Text(
                      "Sign in to your account",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 10.v),
                    Text(
                      "Welcome back! You have been missed.",
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 36.v),
                    _buildInputWithLabel(context),
                    SizedBox(height: 21.v),
                    _buildInputWithLabel1(context),
                    SizedBox(height: 40.v),
                    _buildActionsRow(context),
                    SizedBox(height: 37.v),
                    CustomOutlinedButton(
                      text: "Sign In",
                    ),
                    SizedBox(height: 27.v),
                    _buildDivide(context),
                    SizedBox(height: 25.v),
                    CustomOutlinedButton(
                      text: "Sign in with Google",
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 12.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgSocialIcon,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.outlinePrimaryContainer,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumBluegray80001,
                    ),
                    SizedBox(height: 43.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t have an account? ",
                            style: CustomTextStyles.bodyLargeff667084,
                          ),
                          TextSpan(
                            text: "Sign Up",
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
  Widget _buildInputWithLabel1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: CustomTextStyles.titleSmallBluegray80001,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: passwordController,
          hintText: "Enter your password",
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
              imagePath: ImageConstant.imgEye,
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
      ],
    );
  }

  /// Section Widget
  Widget _buildActionsRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCheckboxButton(
          text: "Remember for 30 days",
          value: rememberfordays,
          textStyle: CustomTextStyles.titleSmallBluegray80001,
          onChange: (value) {
            rememberfordays = value;
          },
        ),
        Text(
          "Forgot Password?",
          style: CustomTextStyles.titleSmallOnError,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDivide(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 9.v,
          ),
          child: SizedBox(
            width: 119.h,
            child: Divider(
              color: appTheme.blueGray5001,
            ),
          ),
        ),
        Text(
          "or Sign In with",
          style: CustomTextStyles.titleMediumBluegray500,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 9.v,
          ),
          child: SizedBox(
            width: 119.h,
            child: Divider(
              color: appTheme.blueGray5001,
            ),
          ),
        ),
      ],
    );
  }
}
