import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

// ignore: must_be_immutable
class NewreleasesgridItemWidget extends StatelessWidget {
  const NewreleasesgridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage42,
          height: 184.adaptSize,
          width: 184.adaptSize,
          radius: BorderRadius.circular(
            28.h,
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          "Pain",
          style: theme.textTheme.titleLarge,
        ),
        SizedBox(height: 7.v),
        Text(
          "Ryan Jones",
          style: CustomTextStyles.titleSmallGray70001,
        ),
      ],
    );
  }
}
