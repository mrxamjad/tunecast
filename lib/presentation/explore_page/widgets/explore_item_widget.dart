import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

// ignore: must_be_immutable
class ExploreItemWidget extends StatelessWidget {
  ExploreItemWidget({
    Key? key,
    this.onTapExploreCard,
  }) : super(
          key: key,
        );

  VoidCallback? onTapExploreCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapExploreCard!.call();
      },
      child: Container(
        decoration: AppDecoration.gradientRedToOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 21.v,
                bottom: 76.v,
              ),
              child: Text(
                "Charts",
                style: CustomTextStyles.titleMediumWhiteA700_1,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage91x81,
              height: 91.v,
              width: 81.h,
              radius: BorderRadius.circular(
                12.h,
              ),
              margin: EdgeInsets.only(
                left: 27.h,
                top: 29.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
