import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

// ignore: must_be_immutable
class TrendingnowItemWidget extends StatelessWidget {
  const TrendingnowItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage188x184,
          height: 188.v,
          width: 184.h,
          radius: BorderRadius.circular(
            28.h,
          ),
        ),
        SizedBox(height: 8.v),
        SizedBox(
          width: 182.h,
          child: Text(
            "Shades of Love - Ania Szarmach",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleMedium_1.copyWith(
              height: 1.40,
            ),
          ),
        ),
      ],
    );
  }
}
