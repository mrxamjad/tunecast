import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_trailing_image.dart';import 'package:new_test_for_bloc/widgets/custom_text_form_field.dart';import 'package:new_test_for_bloc/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';
// ignore_for_file: must_be_immutable
class AddNewCardScreen extends StatelessWidget {AddNewCardScreen({Key? key}) : super(key: key);

TextEditingController cardNameController = TextEditingController();

TextEditingController cardNumberController = TextEditingController();

TextEditingController cvvController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 31.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildFrame(context), SizedBox(height: 24.v), Divider(), SizedBox(height: 24.v), Text("Card Name", style: CustomTextStyles.titleMedium_1), SizedBox(height: 13.v), _buildCardName(context), SizedBox(height: 25.v), Text("Card Number", style: CustomTextStyles.titleMedium_1), SizedBox(height: 13.v), _buildCardNumber(context), SizedBox(height: 25.v), Row(children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text("Expiry Date", style: CustomTextStyles.titleMedium_1)), Padding(padding: EdgeInsets.only(left: 100.h, bottom: 2.v), child: Text("CVV", style: CustomTextStyles.titleMedium_1))]), SizedBox(height: 11.v), _buildCvv1(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildAdd(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v)), title: AppbarTitle(text: "Add New Card", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgIconlyLightScan, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 9.v))]); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Container(padding: EdgeInsets.all(30.h), decoration: AppDecoration.gradientRedToOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder32), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Mocard", style: CustomTextStyles.titleMediumWhiteA70016), CustomImageView(imagePath: ImageConstant.imgSettingsWhiteA700, height: 18.v, width: 60.h)]), SizedBox(height: 35.v), Text("•••• •••• •••• ••••", style: CustomTextStyles.displayMediumWhiteA700), SizedBox(height: 28.v), Row(children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Card Holder name", style: CustomTextStyles.labelMediumWhiteA700), SizedBox(height: 5.v), Text("•••• ••••", style: CustomTextStyles.titleSmallWhiteA700)]), Spacer(flex: 42), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Expiry date", style: CustomTextStyles.labelMediumWhiteA700), SizedBox(height: 4.v), Text("••••/••••", style: CustomTextStyles.titleSmallWhiteA700)]), Spacer(flex: 57), CustomImageView(imagePath: ImageConstant.imgGroup, height: 36.v, width: 58.h)])])); } 
/// Section Widget
Widget _buildCardName(BuildContext context) { return CustomTextFormField(controller: cardNameController, hintText: "Andrew Ainsley"); } 
/// Section Widget
Widget _buildCardNumber(BuildContext context) { return CustomTextFormField(controller: cardNumberController, hintText: "2672 4738 7837 7285"); } 
/// Section Widget
Widget _buildCvv(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 10.h), child: CustomTextFormField(controller: cvvController, hintText: "699", textInputAction: TextInputAction.done))); } 
/// Section Widget
Widget _buildCvv1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(right: 10.h), padding: EdgeInsets.symmetric(vertical: 18.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [Padding(padding: EdgeInsets.symmetric(vertical: 1.v), child: Text("10/07/2026", style: theme.textTheme.titleSmall)), CustomImageView(imagePath: ImageConstant.imgIconsPrimary, height: 20.adaptSize, width: 20.adaptSize)]))), _buildCvv(context)]); } 
/// Section Widget
Widget _buildAdd(BuildContext context) { return CustomElevatedButton(text: "Add", margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 48.v), onPressed: () {onTapAdd(context);}); } 
/// Navigates to the selectPaymentMethodScreen when the action is triggered.
onTapAdd(BuildContext context) { Navigator.pushNamed(context, AppRoutes.selectPaymentMethodScreen); } 
 }
