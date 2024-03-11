import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

// ignore: must_be_immutable
class PopularartistsItemWidget extends StatelessWidget {
  const PopularartistsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage21,
          height: 188.v,
          width: 184.h,
          radius: BorderRadius.circular(
            92.h,
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          "Ariana Grande",
          style: CustomTextStyles.titleMedium_1,
        ),
      ],
    );
  }
}
