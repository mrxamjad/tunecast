import 'package:new_test_for_bloc/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

// ignore: must_be_immutable
class YourlikesItemWidget extends StatelessWidget {
  const YourlikesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage80x80,
          height: 116.adaptSize,
          width: 116.adaptSize,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 235.h,
              child: Text(
                "837: Tristan Harris | Reclaiming Our Future with ...",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium!.copyWith(
                  height: 1.20,
                ),
              ),
            ),
            SizedBox(height: 7.v),
            Row(
              children: [
                Text(
                  "Apple Talk",
                  style: theme.textTheme.labelLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "|",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "48:26 mins",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.v),
            SizedBox(
              width: 248.h,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 6.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCategoriesPlaylist,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 6.v,
                      bottom: 6.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath:
                        ImageConstant.imgIconlyLightOutlineArrowGray90001,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 6.v,
                      bottom: 6.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCategoriesMore,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 6.v,
                      bottom: 6.v,
                    ),
                  ),
                  Spacer(),
                  CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(2.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconlyBoldPlay,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
