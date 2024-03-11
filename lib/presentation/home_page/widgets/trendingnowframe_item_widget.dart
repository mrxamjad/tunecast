import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

// ignore: must_be_immutable
class TrendingnowframeItemWidget extends StatelessWidget {
  const TrendingnowframeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 160.adaptSize,
              width: 160.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
            SizedBox(height: 8.v),
            SizedBox(
              width: 139.h,
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
        ),
      ),
    );
  }
}
