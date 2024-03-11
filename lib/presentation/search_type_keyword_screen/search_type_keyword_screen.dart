import 'package:new_test_for_bloc/widgets/custom_search_view.dart';
import 'widgets/searchtypekeywordlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

class SearchTypeKeywordScreen extends StatelessWidget {
  SearchTypeKeywordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(24.h),
          child: Column(
            children: [
              CustomSearchView(
                controller: searchController,
                hintText: "Abcdefghijklm|",
                contentPadding: EdgeInsets.only(
                  top: 19.v,
                  right: 30.h,
                  bottom: 19.v,
                ),
              ),
              SizedBox(height: 23.v),
              _buildAutoLayoutHorizontalRow(context),
              SizedBox(height: 24.v),
              Divider(),
              SizedBox(height: 23.v),
              _buildSearchTypeKeywordList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontalRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Recent Searches",
          style: theme.textTheme.titleLarge,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            "Clear All",
            style: CustomTextStyles.titleMediumOnPrimaryContainer16,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchTypeKeywordList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 25.v,
        );
      },
      itemCount: 8,
      itemBuilder: (context, index) {
        return SearchtypekeywordlistItemWidget();
      },
    );
  }
}
