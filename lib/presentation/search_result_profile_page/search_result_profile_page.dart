import 'widgets/fiftysixsection_item_widget.dart';import 'widgets/followingsection_item_widget.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';class SearchResultProfilePage extends StatefulWidget {const SearchResultProfilePage({Key? key}) : super(key: key);

@override SearchResultProfilePageState createState() =>  SearchResultProfilePageState();

 }
class SearchResultProfilePageState extends State<SearchResultProfilePage> with  AutomaticKeepAliveClientMixin<SearchResultProfilePage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildFiftySixSection(context), SizedBox(height: 24.v), _buildFollowingSection(context)]))])))); } 
/// Section Widget
Widget _buildFiftySixSection(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: 5, itemBuilder: (context, index) {return FiftysixsectionItemWidget(onTapArtist: () {onTapArtist(context);});}); } 
/// Section Widget
Widget _buildFollowingSection(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: 1, itemBuilder: (context, index) {return FollowingsectionItemWidget(onTapArtist: () {onTapArtist(context);});}); } 
/// Navigates to the profileDetailsScreen when the action is triggered.
onTapArtist(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileDetailsScreen); } 
 }
