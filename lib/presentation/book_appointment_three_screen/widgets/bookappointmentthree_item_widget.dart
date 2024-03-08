import 'package:mindcare_plus/widgets/custom_checkbox_button.dart';
import 'package:mindcare_plus/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore: must_be_immutable
class BookappointmentthreeItemWidget extends StatelessWidget {
  BookappointmentthreeItemWidget({Key? key})
      : super(
          key: key,
        );

  bool difficultysleeping = false;

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCheckboxButton(
          text: "Difficulty sleeping",
          value: difficultysleeping,
          onChange: (value) {
            difficultysleeping = value!;
          },
        ),
        CustomRadioButton(
          text: "Fatigue / weakness",
          value: "Fatigue / weakness",
          groupValue: radioGroup,
          textStyle: CustomTextStyles.titleMediumBlack900_1,
          onChange: (value) {
            radioGroup = value;
          },
        ),
      ],
    );
  }
}
