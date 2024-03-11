import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:new_test_for_bloc/widgets/custom_elevated_button.dart';import 'widgets/songdetails_item_widget.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';class SongDetailsScreen extends StatelessWidget {const SongDetailsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 30.v), child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgImage250x250, height: 250.adaptSize, width: 250.adaptSize, radius: BorderRadius.circular(32.h)), SizedBox(height: 22.v), Text("Starboy", style: theme.textTheme.headlineLarge), SizedBox(height: 10.v), Text("The Weeknd, Daft Punk", style: CustomTextStyles.titleMediumPrimaryMedium), SizedBox(height: 14.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("Song", style: CustomTextStyles.titleSmallGray70001Medium)), Padding(padding: EdgeInsets.only(left: 12.h, top: 1.v), child: Text("|", style: CustomTextStyles.titleSmallGray70001Medium)), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("03:50 mins", style: CustomTextStyles.titleSmallGray70001Medium))]), SizedBox(height: 19.v), _buildAutoLayoutHorizontal(context), SizedBox(height: 24.v), Divider(), SizedBox(height: 22.v), _buildFrame(context), SizedBox(height: 24.v), _buildSongDetails(context)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 11.v)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgFavorite, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v)), Spacer(flex: 18), CustomImageView(imagePath: ImageConstant.imgCategoriesPlaylist, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v)), Spacer(flex: 18), CustomImageView(imagePath: ImageConstant.imgLightBulb, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v)), Spacer(flex: 18), CustomImageView(imagePath: ImageConstant.imgCategoriesMore, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v)), Spacer(flex: 44), CustomElevatedButton(height: 45.v, width: 112.h, text: "Play", leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgCategoriesplayComponentadditionalIcons, height: 20.adaptSize, width: 20.adaptSize)), buttonStyle: CustomButtonStyles.fillPrimaryTL22, buttonTextStyle: CustomTextStyles.titleMediumWhiteA700_1, onPressed: () {onTapPlay(context);})]); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("More Like This", style: theme.textTheme.headlineSmall), Padding(padding: EdgeInsets.only(bottom: 7.v), child: Text("See All", style: CustomTextStyles.titleMediumOnPrimaryContainer16))]); } 
/// Section Widget
Widget _buildSongDetails(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 2, itemBuilder: (context, index) {return SongdetailsItemWidget(onTapSongCard: () {onTapSongCard(context);});}); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapPlay(BuildContext context) { Navigator.pushNamed(context, AppRoutes.songPlayScreen); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.songPlayScreen); } 
 }