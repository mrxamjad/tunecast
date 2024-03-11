import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_trailing_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:new_test_for_bloc/presentation/history_music_page/history_music_page.dart';import 'package:new_test_for_bloc/presentation/history_podcast_page/history_podcast_page.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';class HistoryPodcastTabContainerScreen extends StatefulWidget {const HistoryPodcastTabContainerScreen({Key? key}) : super(key: key);

@override HistoryPodcastTabContainerScreenState createState() =>  HistoryPodcastTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class HistoryPodcastTabContainerScreenState extends State<HistoryPodcastTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 27.v), _buildTabview(context), Expanded(child: SizedBox(height: 761.v, child: TabBarView(controller: tabviewController, children: [HistoryMusicPage(), HistoryPodcastPage()])))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 54.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 15.v)), title: AppbarTitle(text: "History", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewind, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 15.h)), AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 39.h))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 39.v, width: double.maxFinite, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.onPrimaryContainer, labelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), unselectedLabelColor: appTheme.gray500, unselectedLabelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), indicatorColor: theme.colorScheme.onPrimaryContainer, tabs: [Tab(child: Text("Songs")), Tab(child: Text("Podcasts"))])); } 
 }
