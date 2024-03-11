import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';import 'package:new_test_for_bloc/widgets/custom_radio_button.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';
// ignore_for_file: must_be_immutable
class LanguageScreen extends StatelessWidget {LanguageScreen({Key? key}) : super(key: key);

String suggestedRadioGroup = "";

List<String> radioList = ["lbl_english_us", "lbl_english_uk"];

String othersRadioGroup = "";

List<String> radioList1 = ["lbl_mandarin", "lbl_hindi", "lbl_spanish", "lbl_french", "lbl_arabic", "lbl_bengali"];

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Suggested", style: theme.textTheme.titleLarge), SizedBox(height: 22.v), _buildSuggestedRadioGroup(context), SizedBox(height: 30.v), Divider(), SizedBox(height: 30.v), Text("Others", style: theme.textTheme.titleLarge), SizedBox(height: 23.v), _buildOthersRadioGroup(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 53.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 14.v)), title: AppbarTitle(text: "Language", margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildSuggestedRadioGroup(BuildContext context) { return Column(children: [CustomRadioButton(width: 380.h, text: "English (US)", value: radioList[0], groupValue: suggestedRadioGroup, isRightCheck: true, onChange: (value) {suggestedRadioGroup = value;}), Padding(padding: EdgeInsets.only(top: 20.v), child: CustomRadioButton(width: 380.h, text: "English (UK)", value: radioList[1], groupValue: suggestedRadioGroup, isRightCheck: true, onChange: (value) {suggestedRadioGroup = value;}))]); } 
/// Section Widget
Widget _buildOthersRadioGroup(BuildContext context) { return Column(children: [CustomRadioButton(width: 380.h, text: "Mandarin", value: radioList1[0], groupValue: othersRadioGroup, isRightCheck: true, onChange: (value) {othersRadioGroup = value;}), Padding(padding: EdgeInsets.only(top: 20.v), child: CustomRadioButton(width: 380.h, text: "Hindi", value: radioList1[1], groupValue: othersRadioGroup, isRightCheck: true, onChange: (value) {othersRadioGroup = value;})), Padding(padding: EdgeInsets.only(top: 21.v), child: CustomRadioButton(width: 380.h, text: "Spanish", value: radioList1[2], groupValue: othersRadioGroup, isRightCheck: true, onChange: (value) {othersRadioGroup = value;})), Padding(padding: EdgeInsets.only(top: 17.v), child: CustomRadioButton(width: 380.h, text: "French", value: radioList1[3], groupValue: othersRadioGroup, isRightCheck: true, onChange: (value) {othersRadioGroup = value;})), Padding(padding: EdgeInsets.only(top: 20.v), child: CustomRadioButton(width: 380.h, text: "Arabic", value: radioList1[4], groupValue: othersRadioGroup, isRightCheck: true, onChange: (value) {othersRadioGroup = value;})), Padding(padding: EdgeInsets.only(top: 21.v), child: CustomRadioButton(width: 380.h, text: "Bengali", value: radioList1[5], groupValue: othersRadioGroup, isRightCheck: true, onChange: (value) {othersRadioGroup = value;}))]); } 
 }
