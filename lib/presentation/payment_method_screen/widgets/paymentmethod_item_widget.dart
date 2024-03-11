import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

// ignore: must_be_immutable
class PaymentmethodItemWidget extends StatelessWidget {
  const PaymentmethodItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.outlineOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameLightBlue600,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 6.v,
              bottom: 3.v,
            ),
            child: Text(
              "PayPal",
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgContrastOnprimarycontainer,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
        ],
      ),
    );
  }
}
