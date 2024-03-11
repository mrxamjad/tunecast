import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';import 'package:new_test_for_bloc/widgets/custom_outlined_button.dart';import 'package:new_test_for_bloc/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';class SetFingerprintScreen extends StatelessWidget {const SetFingerprintScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 48.v), child: Column(children: [SizedBox(height: 47.v), Container(width: 323.h, margin: EdgeInsets.symmetric(horizontal: 28.h), child: Text("Add a fingerprint to make your account\nmore secure.", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), Spacer(flex: 49), CustomImageView(imagePath: ImageConstant.imgVector236x228, height: 236.v, width: 228.h), Spacer(flex: 50), Container(width: 324.h, margin: EdgeInsets.symmetric(horizontal: 27.h), child: Text("Please put your finger on the fingerprint scanner to get started.", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), SizedBox(height: 73.v), _buildFrame(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Set Your Fingerprint", margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomOutlinedButton(text: "Skip", margin: EdgeInsets.only(right: 10.h), onPressed: () {onTapSkip(context);})), Expanded(child: CustomElevatedButton(text: "Continue", margin: EdgeInsets.only(left: 10.h), onPressed: () {onTapContinue(context);}))]); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkip(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeContainerScreen); } 
/// Navigates to the followArtistsScreen when the action is triggered.
onTapContinue(BuildContext context) { Navigator.pushNamed(context, AppRoutes.followArtistsScreen); } 
 }
