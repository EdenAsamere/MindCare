import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore: must_be_immutable
class FortysixItemWidget extends StatelessWidget {
  const FortysixItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      "Examples: High Cholesterol, Insomnia, Asthma",
      style: theme.textTheme.bodyLarge,
    );
  }
}
