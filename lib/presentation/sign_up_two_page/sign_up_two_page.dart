import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class SignUpTwoPage extends StatefulWidget {
  const SignUpTwoPage({Key? key}) : super(key: key);

  @override
  SignUpTwoPageState createState() => SignUpTwoPageState();
}

class SignUpTwoPageState extends State<SignUpTwoPage>
    with AutomaticKeepAliveClientMixin<SignUpTwoPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: _buildScrollView(context)));
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      SizedBox(height: 24.v),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(children: [
            CustomOutlinedButton(
                text: "Continue",
                onPressed: () {
                  onTapContinue(context);
                }),
            SizedBox(height: 42.v),
            GestureDetector(
                onTap: () {
                  onTapTxtByprovidingyourmobil(context);
                },
                child: Container(
                    width: 324.h,
                    margin: EdgeInsets.only(left: 16.h, right: 17.h),
                    child: Text(
                        "By providing your mobile number, you give us permission to contact you via text.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style:
                            theme.textTheme.bodyLarge!.copyWith(height: 1.50))))
          ]))
    ]));
  }

  /// Navigates to the signUpOneScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpOneScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtByprovidingyourmobil(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
