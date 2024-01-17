import '../list_of_projects_screen/widgets/fiftyseven_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:performa/widgets/app_bar/appbar_title.dart';
import 'package:performa/widgets/app_bar/custom_app_bar.dart';
import 'package:performa/widgets/custom_search_view.dart';

class ListOfProjectsScreen extends StatelessWidget {
  ListOfProjectsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFourteen(context),
              SizedBox(height: 18.v),
              _buildFiftySeven(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 104.v,
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Row(
              children: [
                AppbarSubtitleOne(
                  text: "Cancel",
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                AppbarSubtitle(
                  text: "Projects",
                  margin: EdgeInsets.only(
                    left: 81.h,
                    top: 1.v,
                  ),
                ),
                AppbarTitle(
                  text: "Done",
                  margin: EdgeInsets.only(
                    left: 95.h,
                    bottom: 1.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
        ],
      ),
      styleType: Style.bgFill_2,
    );
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomSearchView(
            controller: searchController,
            hintText: "Search for project",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftySeven(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.5.v),
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: appTheme.gray300,
              ),
            ),
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return FiftysevenItemWidget();
        },
      ),
    );
  }
}
