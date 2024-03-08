import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class HomescreenOneScreen extends StatelessWidget {
  const HomescreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 797.v,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
