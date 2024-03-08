import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:country_pickers/country.dart';
import 'package:mindcare_plus/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadius.circular(
          8.h,
        ),
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray9000c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Container(
              decoration: BoxDecoration(
                color: appTheme.gray100,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 17.v,
                      bottom: 19.v,
                    ),
                    child: CountryPickerUtils.getDefaultFlagImage(
                      country,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.fromLTRB(4.h, 18.v, 12.h, 18.v),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                right: 5.h,
              ),
              child: CustomTextFormField(
                width: 258.h,
                controller: controller,
                hintText: "+234 (999) 000-0000",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
