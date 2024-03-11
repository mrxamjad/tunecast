import 'package:new_test_for_bloc/widgets/custom_search_view.dart';
import 'package:new_test_for_bloc/presentation/search_result_profile_page/search_result_profile_page.dart';
import 'package:new_test_for_bloc/presentation/search_result_album_page/search_result_album_page.dart';
import 'package:new_test_for_bloc/presentation/search_result_playlist_page/search_result_playlist_page.dart';
import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

class SearchResultProfileTabContainerScreen extends StatefulWidget {
  const SearchResultProfileTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultProfileTabContainerScreenState createState() =>
      SearchResultProfileTabContainerScreenState();
}

class SearchResultProfileTabContainerScreenState
    extends State<SearchResultProfileTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Jenny",
                ),
              ),
              SizedBox(height: 24.v),
              _buildTabview(context),
              SizedBox(
                height: 740.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    SearchResultProfilePage(),
                    SearchResultProfilePage(),
                    SearchResultAlbumPage(),
                    SearchResultAlbumPage(),
                    SearchResultPlaylistPage(),
                    SearchResultProfilePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 38.v,
      width: 633.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onPrimaryContainer,
          borderRadius: BorderRadius.circular(
            19.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Songs",
            ),
          ),
          Tab(
            child: Text(
              "Artists",
            ),
          ),
          Tab(
            child: Text(
              "Albums",
            ),
          ),
          Tab(
            child: Text(
              "Podcasts",
            ),
          ),
          Tab(
            child: Text(
              "Playlist",
            ),
          ),
          Tab(
            child: Text(
              "Profile",
            ),
          ),
        ],
      ),
    );
  }
}
