import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';import 'package:new_test_for_bloc/widgets/custom_pin_code_text_field.dart';import 'package:new_test_for_bloc/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';class CreateNewPinScreen extends StatelessWidget {const CreateNewPinScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 138.v), child: Column(children: [Container(width: 331.h, margin: EdgeInsets.symmetric(horizontal: 24.h), child: Text("Add a PIN number to make your account\nmore secure.", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), SizedBox(height: 79.v), Padding(padding: EdgeInsets.only(right: 18.h), child: CustomPinCodeTextField(context: context, onChanged: (value) {})), Spacer(flex: 35), CustomElevatedButton(text: "Continue", onPressed: () {onTapContinue(context);}), Spacer(flex: 64)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 49.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 10.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Create New PIN", margin: EdgeInsets.only(left: 16.h))); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the setFingerprintScreen when the action is triggered.
onTapContinue(BuildContext context) { Navigator.pushNamed(context, AppRoutes.setFingerprintScreen); } 
 }
