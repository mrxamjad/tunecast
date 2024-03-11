import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_trailing_image.dart';import 'widgets/selectpaymentmethod_item_widget.dart';import 'package:new_test_for_bloc/widgets/custom_outlined_button.dart';import 'package:new_test_for_bloc/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';class SelectPaymentMethodScreen extends StatelessWidget {const SelectPaymentMethodScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 29.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Select the payment method you want to use.", style: CustomTextStyles.titleMediumPrimaryMedium16), SizedBox(height: 23.v), _buildSelectPaymentMethod(context), SizedBox(height: 30.v), CustomOutlinedButton(text: "Add New Card", onPressed: () {onTapAddNewCard(context);}), SizedBox(height: 5.v)])), bottomNavigationBar: _buildContinueButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 53.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 14.v)), title: AppbarTitle(text: "Payment", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgIconlyLightScan, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 14.v))]); } 
/// Section Widget
Widget _buildSelectPaymentMethod(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: 4, itemBuilder: (context, index) {return SelectpaymentmethodItemWidget();}); } 
/// Section Widget
Widget _buildContinueButton(BuildContext context) { return CustomElevatedButton(text: "Continue", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 48.v), onPressed: () {onTapContinueButton(context);}); } 
/// Navigates to the addNewCardScreen when the action is triggered.
onTapAddNewCard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addNewCardScreen); } 
/// Navigates to the paymentSummaryScreen when the action is triggered.
onTapContinueButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.paymentSummaryScreen); } 
 }
