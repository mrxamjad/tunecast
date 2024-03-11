import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_trailing_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'widgets/popularpodcastslist_item_widget.dart';import 'widgets/artistslist_item_widget.dart';import 'widgets/explorepodcastsgrid_item_widget.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';class PodcastsScreen extends StatelessWidget {const PodcastsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 32.v), child: Column(children: [Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildPopularArtistsRow(context, popularArtistsText: "Popular Podcasts", seeAllText: "See All")), SizedBox(height: 13.v), _buildPopularPodcastsList(context), SizedBox(height: 30.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildPopularArtistsRow(context, popularArtistsText: "Popular Artists", seeAllText: "See All")), SizedBox(height: 13.v), _buildArtistsList(context), SizedBox(height: 30.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: _buildPopularArtistsRow(context, popularArtistsText: "Categories", seeAllText: "See All")), SizedBox(height: 13.v), _buildExplorePodcastsGrid(context)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 10.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Podcasts", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewind, margin: EdgeInsets.only(left: 24.h, top: 10.v, right: 10.h)), AppbarTrailingImage(imagePath: ImageConstant.imgTelevision, margin: EdgeInsets.only(left: 20.h, top: 10.v, right: 10.h)), AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.only(left: 20.h, top: 10.v, right: 34.h))]); } 
/// Section Widget
Widget _buildPopularPodcastsList(BuildContext context) { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 220.v, child: ListView.separated(padding: EdgeInsets.only(left: 24.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 12.h);}, itemCount: 3, itemBuilder: (context, index) {return PopularpodcastslistItemWidget();}))); } 
/// Section Widget
Widget _buildArtistsList(BuildContext context) { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 209.v, child: ListView.separated(padding: EdgeInsets.only(left: 24.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 12.h);}, itemCount: 3, itemBuilder: (context, index) {return ArtistslistItemWidget();}))); } 
/// Section Widget
Widget _buildExplorePodcastsGrid(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 121.v, crossAxisCount: 2, mainAxisSpacing: 12.h, crossAxisSpacing: 12.h), physics: NeverScrollableScrollPhysics(), itemCount: 6, itemBuilder: (context, index) {return ExplorepodcastsgridItemWidget(onTapExploreCard: () {onTapExploreCard(context);});})); } 
/// Common widget
Widget _buildPopularArtistsRow(BuildContext context, {required String popularArtistsText, required String seeAllText, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text(popularArtistsText, style: theme.textTheme.headlineSmall!.copyWith(color: appTheme.gray90001))), Padding(padding: EdgeInsets.only(bottom: 10.v), child: Text(seeAllText, style: CustomTextStyles.titleMediumOnPrimaryContainer16.copyWith(color: theme.colorScheme.onPrimaryContainer)))]); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the newReleasesScreen when the action is triggered.
onTapExploreCard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.newReleasesScreen); } 
 }
