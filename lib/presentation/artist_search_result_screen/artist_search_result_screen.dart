import 'package:new_test_for_bloc/widgets/custom_search_view.dart';import 'widgets/artistsearchresult_item_widget.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';
// ignore_for_file: must_be_immutable
class ArtistSearchResultScreen extends StatelessWidget {ArtistSearchResultScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 24.v), child: Column(children: [Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: CustomSearchView(controller: searchController, hintText: "The")), SizedBox(height: 24.v), _buildSearchView(context), SizedBox(height: 44.v), _buildArtistSearchResult(context)])))); } 
/// Section Widget
Widget _buildSearchView(BuildContext context) { return SingleChildScrollView(scrollDirection: Axis.horizontal, child: IntrinsicWidth(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(width: 85.h, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 6.v), decoration: AppDecoration.outlineOnPrimaryContainer1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Text("Songs", style: CustomTextStyles.titleMediumOnPrimaryContainerSemiBold)), Container(width: 87.h, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Text("Artists", style: CustomTextStyles.titleMediumWhiteA700)), Container(width: 95.h, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.v), decoration: AppDecoration.outlineOnPrimaryContainer1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Text("Albums", style: CustomTextStyles.titleMediumOnPrimaryContainerSemiBold)), Container(width: 105.h, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.v), decoration: AppDecoration.outlineOnPrimaryContainer1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Text("Podcasts", style: CustomTextStyles.titleMediumOnPrimaryContainerSemiBold))])), Container(width: 91.h, margin: EdgeInsets.only(left: 12.h), padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.v), decoration: AppDecoration.outlineOnPrimaryContainer1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Text("Playlist", style: CustomTextStyles.titleMediumOnPrimaryContainerSemiBold)), Container(width: 86.h, margin: EdgeInsets.only(left: 12.h), padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.v), decoration: AppDecoration.outlineOnPrimaryContainer1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Text("Profile", style: CustomTextStyles.titleMediumOnPrimaryContainerSemiBold))]))); } 
/// Section Widget
Widget _buildArtistSearchResult(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 5, itemBuilder: (context, index) {return ArtistsearchresultItemWidget(onTapArtist: () {onTapArtist(context);});})); } 
/// Navigates to the artistDetailsScreen when the action is triggered.
onTapArtist(BuildContext context) { Navigator.pushNamed(context, AppRoutes.artistDetailsScreen); } 
 }
