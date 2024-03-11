import 'widgets/songlist_item_widget.dart';import 'widgets/teenagedreamlist_item_widget.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';class SearchResultTopPage extends StatefulWidget {const SearchResultTopPage({Key? key}) : super(key: key);

@override SearchResultTopPageState createState() =>  SearchResultTopPageState();

 }
class SearchResultTopPageState extends State<SearchResultTopPage> with  AutomaticKeepAliveClientMixin<SearchResultTopPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [_buildSongList(context), SizedBox(height: 16.v), _buildTeenageDreamList(context)]))]))))); } 
/// Section Widget
Widget _buildSongList(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 6, itemBuilder: (context, index) {return SonglistItemWidget(onTapSongCard: () {onTapSongCard(context);});}); } 
/// Section Widget
Widget _buildTeenageDreamList(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 9.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: 1, itemBuilder: (context, index) {return TeenagedreamlistItemWidget();})); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard(BuildContext context) { Navigator.pushNamed(context, AppRoutes.songPlayScreen); } 
 }
