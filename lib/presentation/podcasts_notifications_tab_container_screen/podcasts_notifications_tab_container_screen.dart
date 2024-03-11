import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';import 'package:new_test_for_bloc/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:new_test_for_bloc/presentation/songs_notifications_page/songs_notifications_page.dart';import 'package:new_test_for_bloc/presentation/podcasts_notifications_page/podcasts_notifications_page.dart';import 'package:flutter/material.dart';import 'package:new_test_for_bloc/core/app_export.dart';class PodcastsNotificationsTabContainerScreen extends StatefulWidget {const PodcastsNotificationsTabContainerScreen({Key? key}) : super(key: key);

@override PodcastsNotificationsTabContainerScreenState createState() =>  PodcastsNotificationsTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class PodcastsNotificationsTabContainerScreenState extends State<PodcastsNotificationsTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 33.v), child: Column(children: [_buildTabview(context), SizedBox(height: 847.v, child: TabBarView(controller: tabviewController, children: [SongsNotificationsPage(), PodcastsNotificationsPage()]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "Notifications", margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 9.v))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return SizedBox(height: 39.v, width: double.maxFinite, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.onPrimaryContainer, labelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w400), unselectedLabelColor: appTheme.gray500, unselectedLabelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w400), indicatorColor: theme.colorScheme.onPrimaryContainer, tabs: [Tab(child: Text("Songs")), Tab(child: Text("Podcasts"))])); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { Navigator.pop(context); } 
 }
