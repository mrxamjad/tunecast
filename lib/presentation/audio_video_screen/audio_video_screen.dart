import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';import 'package:new_test_for_bloc/widgets/custom_switch.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';
// ignore_for_file: must_be_immutable
class AudioVideoScreen extends StatelessWidget {AudioVideoScreen({Key? key}) : super(key: key);

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 33.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Audio Quality", style: theme.textTheme.titleLarge), SizedBox(height: 32.v), _buildAudioQualityRow1(context, dynamicText: "Wi-Fi Streaming", dynamicText1: "High"), SizedBox(height: 32.v), _buildAudioQualityRow1(context, dynamicText: "Data Cellular Streaming", dynamicText1: "Automatic"), SizedBox(height: 32.v), _buildAudioQualityRow4(context), SizedBox(height: 32.v), _buildAudioQualityRow1(context, dynamicText: "Download", dynamicText1: "Normal"), SizedBox(height: 34.v), _buildAudioQualityRow6(context), SizedBox(height: 34.v), _buildAudioQualityRow7(context), SizedBox(height: 33.v), Text("Video Quality", style: theme.textTheme.titleLarge), SizedBox(height: 32.v), _buildAudioQualityRow1(context, dynamicText: "Wi-Fi Streaming", dynamicText1: "High"), SizedBox(height: 32.v), _buildAudioQualityRow1(context, dynamicText: "Data Cellular Streaming", dynamicText1: "Medium"), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v)), title: AppbarTitle(text: "Audio & Video", margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildAudioQualityRow4(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text("Auto Adjust Quality", style: CustomTextStyles.titleMediumSemiBold_1)), CustomSwitch(value: isSelectedSwitch, onChange: (value) {isSelectedSwitch = value;})]); } 
/// Section Widget
Widget _buildAudioQualityRow6(BuildContext context) { return Row(children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text("Download Only Using Data Cellular", style: CustomTextStyles.titleMediumSemiBold_1)), CustomSwitch(margin: EdgeInsets.only(left: 41.h), value: isSelectedSwitch1, onChange: (value) {isSelectedSwitch1 = value;})]); } 
/// Section Widget
Widget _buildAudioQualityRow7(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("Equalizer", style: CustomTextStyles.titleMediumSemiBold_1)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 3.v))]); } 
/// Common widget
Widget _buildAudioQualityRow1(BuildContext context, {required String dynamicText, required String dynamicText1, }) { return Row(children: [Text(dynamicText, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(color: appTheme.gray90001)), Spacer(), Text(dynamicText1, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(color: appTheme.gray90001)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 20.h, bottom: 3.v))]); } 
 }
