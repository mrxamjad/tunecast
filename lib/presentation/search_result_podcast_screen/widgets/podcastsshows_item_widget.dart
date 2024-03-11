import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

// ignore: must_be_immutable
class PodcastsshowsItemWidget extends StatelessWidget {
  PodcastsshowsItemWidget({
    Key? key,
    this.onTapPodcastCard,
  }) : super(
          key: key,
        );

  VoidCallback? onTapPodcastCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapPodcastCard!.call();
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage31,
                  height: 160.adaptSize,
                  width: 160.adaptSize,
                  radius: BorderRadius.circular(
                    28.h,
                  ),
                ),
                SizedBox(height: 9.v),
                Text(
                  "The Jordan Harb...",
                  style: CustomTextStyles.titleMedium_1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
