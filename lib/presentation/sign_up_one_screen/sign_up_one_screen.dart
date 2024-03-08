import 'package:mindcare_plus/widgets/custom_search_view.dart';
import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class SignUpOneScreen extends StatelessWidget {
  SignUpOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 49.v,
          ),
          child: Column(
            children: [
              Text(
                "Health Insurance",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 11.v),
              SizedBox(
                width: 358.h,
                child: Text(
                  "Search for your health insurance provider to see if you’re cover.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              CustomImageView(
                imagePath: ImageConstant.imgProgressbarBlueGray50,
                height: 3.v,
                width: 358.h,
                radius: BorderRadius.circular(
                  1.h,
                ),
              ),
              SizedBox(height: 56.v),
              _buildInputField(context),
              Spacer(),
              CustomOutlinedButton(
                text: "Save",
              ),
              SizedBox(height: 16.v),
              CustomOutlinedButton(
                text: "Skip Insurance",
                buttonStyle: CustomButtonStyles.outlinePrimaryContainer,
                buttonTextStyle: CustomTextStyles.titleMediumInterGray900,
              ),
              SizedBox(height: 18.v),
              Text(
                "You can see a doctor without insurance",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 29.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Column(
      children: [
        CustomSearchView(
          controller: searchController,
          hintText: "Search",
        ),
        SizedBox(height: 19.v),
        Text(
          "e.g Leadway Insurance, Mansard",
          style: CustomTextStyles.bodyLargeBlack900,
        ),
      ],
    );
  }
}
