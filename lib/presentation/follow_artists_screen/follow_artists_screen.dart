import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';import 'widgets/followartistslist_item_widget.dart';import 'package:new_test_for_bloc/widgets/custom_outlined_button.dart';import 'package:new_test_for_bloc/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';class FollowArtistsScreen extends StatelessWidget {const FollowArtistsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 357.h, margin: EdgeInsets.only(right: 22.h), child: Text("Follow your favorite artists. Or you can skip it for now.", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyLarge!.copyWith(height: 1.40))), SizedBox(height: 32.v), _buildFollowArtistsList(context)])), bottomNavigationBar: _buildAutoLayoutVertical(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Follow Artists", margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildFollowArtistsList(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 4, itemBuilder: (context, index) {return FollowartistslistItemWidget();}); } 
/// Section Widget
Widget _buildSkipButton(BuildContext context) { return CustomOutlinedButton(width: 180.h, text: "Skip", onPressed: () {onTapSkipButton(context);}); } 
/// Section Widget
Widget _buildContinueButton(BuildContext context) { return CustomElevatedButton(width: 180.h, text: "Continue", margin: EdgeInsets.only(left: 20.h), onPressed: () {onTapContinueButton(context);}); } 
/// Section Widget
Widget _buildAutoLayoutVertical(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 48.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL40), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [_buildSkipButton(context), _buildContinueButton(context)])); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapSkipButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeContainerScreen); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapContinueButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeContainerScreen); } 
 }
