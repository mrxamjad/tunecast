import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';import 'package:new_test_for_bloc/widgets/custom_pin_code_text_field.dart';import 'package:new_test_for_bloc/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';class FilledOtpScreen extends StatelessWidget {const FilledOtpScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 16.v), Text("Code has been sent to +1 111 ******99", style: CustomTextStyles.titleMediumMedium), SizedBox(height: 61.v), CustomPinCodeTextField(context: context, onChanged: (value) {}), SizedBox(height: 61.v), RichText(text: TextSpan(children: [TextSpan(text: "Resend code in ", style: CustomTextStyles.titleMediumff212121), TextSpan(text: "53", style: CustomTextStyles.titleMediumffc10606), TextSpan(text: " s", style: CustomTextStyles.titleMediumff212121)]), textAlign: TextAlign.left)])), bottomNavigationBar: _buildVerifyButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Forgot Password", margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildVerifyButton(BuildContext context) { return CustomElevatedButton(text: "Verify", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 45.v), onPressed: () {onTapVerifyButton(context);}); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the createNewPasswordScreen when the action is triggered.
onTapVerifyButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.createNewPasswordScreen); } 
 }
