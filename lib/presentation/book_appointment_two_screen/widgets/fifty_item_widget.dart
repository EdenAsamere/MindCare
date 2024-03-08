import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore: must_be_immutable
class FiftyItemWidget extends StatelessWidget {
  const FiftyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      "Examples: Amoxicillin, Bactrim, Aspirin",
      style: theme.textTheme.bodyLarge,
    );
  }
}
