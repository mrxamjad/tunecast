import 'package:new_test_for_bloc/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 28.adaptSize,
          width: 28.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgSettingsGray90001,
          ),
        ),
      ),
    );
  }
}
