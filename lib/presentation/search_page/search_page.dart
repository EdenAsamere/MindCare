import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:mindcare_plus/widgets/custom_search_view.dart';
import 'widgets/search_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimary,
                child: Column(children: [
                  Container(
                      height: 16.v,
                      width: double.maxFinite,
                      decoration:
                          BoxDecoration(color: appTheme.gray50Ef, boxShadow: [
                        BoxShadow(
                            color: appTheme.black900.withOpacity(0.3),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(0, 1))
                      ])),
                  SizedBox(height: 27.v),
                  _buildFrame(context),
                  SizedBox(height: 13.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: CustomSearchView(
                          controller: searchController,
                          hintText: "Doctors, Symptoms, Hospitals....")),
                  SizedBox(height: 32.v),
                  _buildSearch(context)
                ]))));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Search", style: theme.textTheme.titleLarge),
          CustomOutlinedButton(
              height: 24.v,
              width: 109.h,
              text: "Lagos, NG",
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 6.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLocationon,
                      height: 18.adaptSize,
                      width: 18.adaptSize)),
              buttonStyle: CustomButtonStyles.outlinePrimaryContainerTL12,
              buttonTextStyle: theme.textTheme.titleSmall!)
        ]));
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 171.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 10.h),
                physics: BouncingScrollPhysics(),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return SearchItemWidget(onTapComponent: () {
                    onTapComponent(context);
                  });
                })));
  }

  /// Navigates to the bookAppointmentFourScreen when the action is triggered.
  onTapComponent(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookAppointmentFourScreen);
  }
}
