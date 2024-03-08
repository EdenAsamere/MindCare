import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class HomescreenTwoScreen extends StatelessWidget {
  const HomescreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 87.h,
                vertical: 339.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder195,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "MediCare",
                              style: theme.textTheme.displaySmall,
                            ),
                            TextSpan(
                              text: "+",
                              style: theme.textTheme.displaySmall,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 31.v,
                        width: 33.h,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          top: 4.v,
                          bottom: 3.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "Your Doctor, One tap away.",
                    style: CustomTextStyles.bodyLargeGray5001,
                  ),
                  SizedBox(height: 47.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
