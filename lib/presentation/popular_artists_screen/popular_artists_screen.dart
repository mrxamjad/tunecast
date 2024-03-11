import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_trailing_image.dart';import 'widgets/popularartists_item_widget.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';class PopularArtistsScreen extends StatelessWidget {const PopularArtistsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 27.v), child: _buildPopularArtists(context))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v)), title: AppbarTitle(text: "Popular Artists", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewind, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 13.v))]); } 
/// Section Widget
Widget _buildPopularArtists(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 220.v, crossAxisCount: 2, mainAxisSpacing: 12.h, crossAxisSpacing: 12.h), physics: NeverScrollableScrollPhysics(), itemCount: 5, itemBuilder: (context, index) {return PopularartistsItemWidget();})); } 
 }
