import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Homescreen One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homescreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Homescreen Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homescreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up Two - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpTwoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Book appointment Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookAppointmentFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select field",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.selectFieldScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Choose doctor",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chooseDoctorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Calendar",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.calendarScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Book appointment Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookAppointmentThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Book appointment Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookAppointmentTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Book appointment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookAppointmentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Book appointment One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookAppointmentOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pop-up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.popUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Date and time Picker",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dateAndTimePickerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Calendar One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.calendarOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Calendar Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.calendarTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Messesages One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messesagesOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Messesages Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messesagesTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Messesages",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messesagesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
