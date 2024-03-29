import 'package:new_test_for_bloc/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

// ignore: must_be_immutable
class FollowingsectionItemWidget extends StatelessWidget {
  FollowingsectionItemWidget({
    Key? key,
    this.onTapArtist,
  }) : super(
          key: key,
        );

  VoidCallback? onTapArtist;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapArtist!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 231.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage83,
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  radius: BorderRadius.circular(
                    40.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 17.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jenny Wigington",
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "2,798 Followers",
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _buildArtistSection(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArtistSection(BuildContext context) {
    return CustomOutlinedButton(
      height: 32.v,
      width: 92.h,
      text: "Following",
      margin: EdgeInsets.symmetric(vertical: 24.v),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
      buttonTextStyle: CustomTextStyles.titleSmallPrimary,
    );
  }
}
