import 'widgets/searchresultalbum_item_widget.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';class SearchResultAlbumPage extends StatefulWidget {const SearchResultAlbumPage({Key? key}) : super(key: key);

@override SearchResultAlbumPageState createState() =>  SearchResultAlbumPageState();

 }
class SearchResultAlbumPageState extends State<SearchResultAlbumPage> with  AutomaticKeepAliveClientMixin<SearchResultAlbumPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 21.v), _buildSearchResultAlbum(context)])))); } 
/// Section Widget
Widget _buildSearchResultAlbum(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 267.v, crossAxisCount: 2, mainAxisSpacing: 12.h, crossAxisSpacing: 12.h), physics: NeverScrollableScrollPhysics(), itemCount: 4, itemBuilder: (context, index) {return SearchresultalbumItemWidget(onTapCardBig: () {onTapCardBig(context);});})); } 
/// Navigates to the albumDetailsScreen when the action is triggered.
onTapCardBig(BuildContext context) { Navigator.pushNamed(context, AppRoutes.albumDetailsScreen); } 
 }
