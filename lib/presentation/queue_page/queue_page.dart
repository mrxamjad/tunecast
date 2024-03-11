import 'widgets/queue_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:new_test_for_bloc/core/app_export.dart';

// ignore_for_file: must_be_immutable
class QueuePage extends StatefulWidget {
  const QueuePage({Key? key})
      : super(
          key: key,
        );

  @override
  QueuePageState createState() => QueuePageState();
}

class QueuePageState extends State<QueuePage>
    with AutomaticKeepAliveClientMixin<QueuePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildAutoLayoutHorizontal(context),
                      SizedBox(height: 22.v),
                      Divider(),
                      SizedBox(height: 23.v),
                      _buildQueue(context),
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
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Sort by",
          style: theme.textTheme.titleLarge,
        ),
        Spacer(),
        Text(
          "Recently Added",
          style: CustomTextStyles.titleMediumOnPrimaryContainer16,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgIconlyCurvedSwap,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 12.h,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildQueue(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 24.v,
        );
      },
      itemCount: 4,
      itemBuilder: (context, index) {
        return QueueItemWidget();
      },
    );
  }
}
