import '../time_tracker_screen/widgets/stat1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:performa/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:performa/widgets/app_bar/appbar_title_image.dart';
import 'package:performa/widgets/app_bar/custom_app_bar.dart';
import 'package:performa/widgets/custom_drop_down.dart';
import 'package:performa/widgets/custom_elevated_button.dart';

class TimeTrackerScreen extends StatelessWidget {
  TimeTrackerScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              _buildSeventyThree(context),
              SizedBox(height: 19.v),
              _buildStat1(context),
              SizedBox(height: 221.v),
              _buildTwelve(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 123.v,
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Row(
              children: [
                AppbarTitleCircleimage(
                  imagePath: ImageConstant.imgEllipse148x48,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 2.v,
                    bottom: 1.v,
                  ),
                  child: Column(
                    children: [
                      AppbarSubtitleTwo(
                        text: "Welcome,",
                        margin: EdgeInsets.only(right: 66.h),
                      ),
                      AppbarSubtitle(
                        text: "Gerund Malbert",
                      ),
                    ],
                  ),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgMegaphone,
                  margin: EdgeInsets.only(
                    left: 126.h,
                    top: 7.v,
                    bottom: 9.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
        ],
      ),
      styleType: Style.bgFill_4,
    );
  }

  /// Section Widget
  Widget _buildSeventyThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Stats",
            style: CustomTextStyles.titleSmallBold,
          ),
          CustomDropDown(
            width: 93.h,
            icon: Container(
              margin: EdgeInsets.only(left: 5.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdownPrimary,
                height: 14.adaptSize,
                width: 14.adaptSize,
              ),
            ),
            hintText: "Last month",
            items: dropdownItemList,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStat1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 10.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return Stat1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 110.h,
        vertical: 36.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup12,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Opacity(
            opacity: 0.7,
            child: Text(
              "Total worked today",
              style: CustomTextStyles.titleSmallOnPrimary_2,
            ),
          ),
          Text(
            "5:35:08",
            style: CustomTextStyles.titleLargeOnPrimary,
          ),
          SizedBox(height: 44.v),
          CustomElevatedButton(
            text: "Stop Working",
            leftIcon: Container(
              margin: EdgeInsets.only(right: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgStop,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillDeepOrange,
            buttonTextStyle: CustomTextStyles.titleSmallOnPrimary_1,
          ),
          SizedBox(height: 22.v),
        ],
      ),
    );
  }
}
