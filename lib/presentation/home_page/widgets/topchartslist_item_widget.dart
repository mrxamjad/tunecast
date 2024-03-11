import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

// ignore: must_be_immutable
class TopchartslistItemWidget extends StatelessWidget {
  const TopchartslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage5,
            height: 160.adaptSize,
            width: 160.adaptSize,
            radius: BorderRadius.circular(
              24.h,
            ),
            margin: EdgeInsets.only(bottom: 31.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 66.v,
              bottom: 96.v,
            ),
            child: Text(
              "TOP 100",
              style: CustomTextStyles.headlineSmallWhiteA700,
            ),
          ),
          Spacer(
            flex: 47,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage6,
            height: 160.adaptSize,
            width: 160.adaptSize,
            radius: BorderRadius.circular(
              24.h,
            ),
            margin: EdgeInsets.only(bottom: 31.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 66.v,
              bottom: 96.v,
            ),
            child: Text(
              "TOP 50",
              style: CustomTextStyles.headlineSmallWhiteA700,
            ),
          ),
          Spacer(
            flex: 52,
          ),
          Column(
            children: [
              SizedBox(
                height: 160.adaptSize,
                width: 160.adaptSize,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage7,
                      height: 160.adaptSize,
                      width: 160.adaptSize,
                      radius: BorderRadius.circular(
                        24.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "TOP 100",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.headlineSmallWhiteA700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                "TOP 100 - Global",
                style: CustomTextStyles.titleMedium_1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
