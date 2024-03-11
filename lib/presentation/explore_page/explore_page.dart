import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:new_test_for_bloc/widgets/custom_search_view.dart';import 'widgets/explore_item_widget.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';
// ignore_for_file: must_be_immutable
class ExplorePage extends StatelessWidget {ExplorePage({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [_buildHeaderContent(context), Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Browse All", style: theme.textTheme.titleLarge), SizedBox(height: 24.v), _buildExplore(context)]))])))); } 
/// Section Widget
Widget _buildHeaderContent(BuildContext context) { return Container(padding: EdgeInsets.symmetric(vertical: 5.v), decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 9.v), CustomAppBar(height: 33.v, leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgVector, margin: EdgeInsets.only(left: 24.h, bottom: 1.v)), title: AppbarTitle(text: "Explore", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.fromLTRB(24.h, 2.v, 24.h, 3.v))]), SizedBox(height: 38.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: CustomSearchView(controller: searchController, hintText: "Artists, Songs, Podcasts, & More", contentPadding: EdgeInsets.only(top: 19.v, right: 30.h, bottom: 19.v)))])); } 
/// Section Widget
Widget _buildExplore(BuildContext context) { return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 121.v, crossAxisCount: 2, mainAxisSpacing: 12.h, crossAxisSpacing: 12.h), physics: NeverScrollableScrollPhysics(), itemCount: 8, itemBuilder: (context, index) {return ExploreItemWidget(onTapExploreCard: () {onTapExploreCard(context);});}); } 
/// Navigates to the podcastsScreen when the action is triggered.
onTapExploreCard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.podcastsScreen); } 
 }
