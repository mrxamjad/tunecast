import 'package:new_test_for_bloc/widgets/app_bar/custom_app_bar.dart';
import 'package:new_test_for_bloc/widgets/app_bar/appbar_leading_image.dart';
import 'package:new_test_for_bloc/widgets/app_bar/appbar_title.dart';
import 'package:new_test_for_bloc/widgets/app_bar/appbar_trailing_image.dart';
import 'package:new_test_for_bloc/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:new_test_for_bloc/presentation/your_likes_page/your_likes_page.dart';
import 'package:new_test_for_bloc/presentation/queue_page/queue_page.dart';
import 'package:new_test_for_bloc/presentation/downloaded_page/downloaded_page.dart';
import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

class YourLikesTabContainerScreen extends StatefulWidget {
  const YourLikesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  YourLikesTabContainerScreenState createState() =>
      YourLikesTabContainerScreenState();
}

class YourLikesTabContainerScreenState
    extends State<YourLikesTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 31.v),
            child: Column(
              children: [
                _buildTabview(context),
                SizedBox(
                  height: 797.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      YourLikesPage(),
                      QueuePage(),
                      DownloadedPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      title: AppbarTitle(
        text: "Podcasts",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 11.v,
            right: 11.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgSettingsGray90001,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 11.v,
            right: 35.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 39.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimaryContainer,
        labelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        indicatorColor: theme.colorScheme.onPrimaryContainer,
        tabs: [
          Tab(
            child: Text(
              "Your Likes",
            ),
          ),
          Tab(
            child: Text(
              "Queue",
            ),
          ),
          Tab(
            child: Text(
              "Downloaded",
            ),
          ),
        ],
      ),
    );
  }
}
