import 'package:mindcare_plus/presentation/search_page/search_page.dart';
import 'package:mindcare_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_title.dart';
import 'package:mindcare_plus/widgets/custom_icon_button.dart';
import 'widgets/profile_item_widget.dart';
import 'package:mindcare_plus/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 27.v,
              ),
              decoration: AppDecoration.fillOnPrimary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Account",
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                  SizedBox(height: 19.v),
                  _buildDoctor1(context),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 16.v),
                  _buildDoctor2(context),
                  SizedBox(height: 37.v),
                  Text(
                    "Payment",
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                  SizedBox(height: 17.v),
                  _buildDoctor3(context),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 16.v),
                  _buildDoctor4(context),
                  SizedBox(height: 37.v),
                  Text(
                    "Settings",
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                  SizedBox(height: 17.v),
                  _buildProfile(context),
                  SizedBox(height: 20.v),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Profile",
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildDoctor1(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Container(
            height: 45.adaptSize,
            width: 45.adaptSize,
            decoration: AppDecoration.outlineBlack9001.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder22,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgOpenPeepsAvatar,
              height: 45.adaptSize,
              width: 45.adaptSize,
              radius: BorderRadius.only(
                topLeft: Radius.circular(23.h),
                topRight: Radius.circular(22.h),
                bottomLeft: Radius.circular(23.h),
                bottomRight: Radius.circular(22.h),
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nomso Onyemuwa",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 7.v),
                Text(
                  "Male, 27 years old.",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgBorderColor,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctor2(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              padding: EdgeInsets.all(5.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgSettings,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "MediCare",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 7.v),
                Text(
                  "Basic Account",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctor3(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 45.adaptSize,
            width: 45.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgCreditCardBlue600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment method on file",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Mastercard ****8976",
                  style: CustomTextStyles.bodyMediumBlue600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctor4(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 45.adaptSize,
            width: 45.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillTealTL20,
            child: CustomImageView(
              imagePath: ImageConstant.imgReceipt,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Transactios",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 7.v),
                Text(
                  "View",
                  style: CustomTextStyles.bodyMediumBlue600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.v),
          child: SizedBox(
            width: 358.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray5001,
            ),
          ),
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return ProfileItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.searchPage;
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Calendar:
        return "/";
      case BottomBarEnum.Message:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.searchPage:
        return SearchPage();
      default:
        return DefaultWidget();
    }
  }
}
