import 'package:mindcare_plus/widgets/custom_text_form_field.dart';
import 'package:mindcare_plus/widgets/custom_drop_down.dart';
import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:mindcare_plus/widgets/custom_phone_number.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:mindcare_plus/presentation/sign_up_two_page/sign_up_two_page.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class SignUpTwoTabContainerScreen extends StatefulWidget {
  const SignUpTwoTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignUpTwoTabContainerScreenState createState() =>
      SignUpTwoTabContainerScreenState();
}

class SignUpTwoTabContainerScreenState
    extends State<SignUpTwoTabContainerScreen> with TickerProviderStateMixin {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('234');

  TextEditingController phoneNumberController = TextEditingController();

  late TabController tabviewController;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 49.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Basic Information",
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 12.v),
                        Container(
                          width: 352.h,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            right: 22.h,
                          ),
                          child: Text(
                            "Please tell us some basic information to complete your profile:",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyLarge!.copyWith(
                              height: 1.50,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgProgressbar,
                          height: 3.v,
                          width: 358.h,
                          radius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                        SizedBox(height: 33.v),
                        _buildInputWithLabel(context),
                        SizedBox(height: 22.v),
                        _buildInputWithLabel1(context),
                        SizedBox(height: 21.v),
                        _buildInputWithLabel2(context),
                        SizedBox(height: 22.v),
                        _buildInputWithLabel3(context),
                        SizedBox(height: 21.v),
                        _buildInputWithLabel4(context),
                        _buildTabBarView(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputWithLabel(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "First Name",
            style: CustomTextStyles.titleSmallBluegray80001,
          ),
          SizedBox(height: 7.v),
          CustomTextFormField(
            controller: firstNameController,
            hintText: "First Name",
            prefix: Container(
              margin: EdgeInsets.fromLTRB(14.h, 18.v, 8.h, 18.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgAccountcircle,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 56.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputWithLabel1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Last Name",
            style: CustomTextStyles.titleSmallBluegray80001,
          ),
          SizedBox(height: 7.v),
          CustomTextFormField(
            controller: lastNameController,
            hintText: "Last Name",
            prefix: Container(
              margin: EdgeInsets.fromLTRB(14.h, 18.v, 8.h, 18.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgAccountcircle,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 56.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputWithLabel2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Date of birth",
            style: CustomTextStyles.titleSmallBluegray80001,
          ),
          SizedBox(height: 7.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomDropDown(
                width: 140.h,
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 16.v, 14.h, 16.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdropup,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                hintText: "Month",
                hintStyle: theme.textTheme.bodyLarge!,
                items: dropdownItemList,
                contentPadding: EdgeInsets.only(
                  left: 14.h,
                  top: 18.v,
                  bottom: 18.v,
                ),
                onChanged: (value) {},
              ),
              CustomOutlinedButton(
                height: 56.v,
                width: 103.h,
                text: "Day",
                buttonStyle: CustomButtonStyles.outlinePrimaryContainer,
                buttonTextStyle: theme.textTheme.bodyLarge!,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 28.h,
                  vertical: 17.v,
                ),
                decoration: AppDecoration.outlinePrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Text(
                  "Year",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputWithLabel3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phone number",
            style: CustomTextStyles.titleSmallGTWalsheimBluegray80001,
          ),
          SizedBox(height: 7.v),
          CustomPhoneNumber(
            country: selectedCountry,
            controller: phoneNumberController,
            onTap: (Country value) {
              selectedCountry = value;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputWithLabel4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gender",
            style: CustomTextStyles.titleSmallBluegray80001,
          ),
          SizedBox(height: 7.v),
          Container(
            height: 32.v,
            width: 358.h,
            decoration: BoxDecoration(
              color: appTheme.gray6001e,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.black900,
              labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'GT Walsheim Pro',
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelColor: appTheme.blueGray70002,
              unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'GT Walsheim Pro',
                fontWeight: FontWeight.w500,
              ),
              indicatorPadding: EdgeInsets.all(
                2.0.h,
              ),
              indicator: BoxDecoration(
                color: theme.colorScheme.onPrimary.withOpacity(1),
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
                border: Border.all(
                  color: appTheme.black900.withOpacity(0.04),
                  width: 1.h,
                  strokeAlign: strokeAlignOutside,
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black900.withOpacity(0.04),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      3,
                    ),
                  ),
                ],
              ),
              tabs: [
                Tab(
                  child: Text(
                    "Male",
                  ),
                ),
                Tab(
                  child: Text(
                    "Female",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 216.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          SignUpTwoPage(),
          SignUpTwoPage(),
        ],
      ),
    );
  }
}
