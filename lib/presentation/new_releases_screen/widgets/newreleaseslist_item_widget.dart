import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

// ignore: must_be_immutable
class NewreleaseslistItemWidget extends StatelessWidget {
  const NewreleaseslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage184x184,
            height: 184.adaptSize,
            width: 184.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            "Positions",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 5.v),
          Text(
            "Ariana Grande",
            style: CustomTextStyles.titleSmallGray70001,
          ),
        ],
      ),
    );
  }
}
