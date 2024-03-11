import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_trailing_image.dart';import 'widgets/topalbumsglobal_item_widget.dart';import 'widgets/charts_item_widget.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';class ChartsScreen extends StatelessWidget {const ChartsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 27.v), child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Weekly Album Charts", style: theme.textTheme.headlineSmall), SizedBox(height: 13.v), _buildTopAlbumsGlobal(context), SizedBox(height: 30.v), Text("Weekly Song Charts", style: theme.textTheme.headlineSmall), SizedBox(height: 13.v), _buildCharts(context)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Charts", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewind, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 9.v))]); } 
/// Section Widget
Widget _buildTopAlbumsGlobal(BuildContext context) { return SizedBox(height: 222.v, child: ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 12.h);}, itemCount: 2, itemBuilder: (context, index) {return TopalbumsglobalItemWidget(onTapCard: () {onTapCard(context);});})); } 
/// Section Widget
Widget _buildCharts(BuildContext context) { return SizedBox(height: 222.v, child: ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 12.h);}, itemCount: 2, itemBuilder: (context, index) {return ChartsItemWidget();})); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the topAlbumsGlobalScreen when the action is triggered.
onTapCard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.topAlbumsGlobalScreen); } 
 }
