import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

// ignore: must_be_immutable
class SearchtypekeywordlistItemWidget extends StatelessWidget {
  const SearchtypekeywordlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            "Ariana Grande",
            style: CustomTextStyles.titleMediumGray600,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesXClose,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
