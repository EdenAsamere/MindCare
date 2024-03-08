import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore: must_be_immutable
class FiftysevenItemWidget extends StatelessWidget {
  const FiftysevenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335.h,
      child: Text(
        "Examples: Appendectomy, Tonsillectomy, Knee replacement.",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: theme.textTheme.bodyLarge!.copyWith(
          height: 1.50,
        ),
      ),
    );
  }
}
