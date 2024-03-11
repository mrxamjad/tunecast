import 'package:new_test_for_bloc/widgets/custom_search_view.dart';
import 'widgets/searchnotfound_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

class SearchNotFoundScreen extends StatelessWidget {
  SearchNotFoundScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Abcdefghijklm",
                ),
              ),
              SizedBox(height: 24.v),
              _buildSearchNotFound(context),
              SizedBox(height: 124.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup324,
                height: 250.v,
                width: 339.h,
              ),
              SizedBox(height: 39.v),
              Text(
                "Not Found",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 13.v),
              Container(
                width: 342.h,
                margin: EdgeInsets.symmetric(horizontal: 42.h),
                child: Text(
                  "Sorry, the keyword you entered cannot be found, please check again or search with another keyword.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.40,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchNotFound(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 38.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 24.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 12.h,
            );
          },
          itemCount: 9,
          itemBuilder: (context, index) {
            return SearchnotfoundItemWidget();
          },
        ),
      ),
    );
  }
}
