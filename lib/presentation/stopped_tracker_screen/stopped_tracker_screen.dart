import '../stopped_tracker_screen/widgets/stat2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:performa/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:performa/widgets/app_bar/appbar_title_image.dart';
import 'package:performa/widgets/app_bar/custom_app_bar.dart';
import 'package:performa/widgets/custom_drop_down.dart';
import 'package:performa/widgets/custom_icon_button.dart';

class StoppedTrackerScreen extends StatelessWidget {
  StoppedTrackerScreen({Key? key})
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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 23.v,
          ),
          child: Column(
            children: [
              _buildSixtyEight(context),
              SizedBox(height: 19.v),
              _buildStat1(context),
              SizedBox(height: 240.v),
              _buildTooltip(context),
              SizedBox(height: 10.v),
              CustomIconButton(
                height: 64.adaptSize,
                width: 64.adaptSize,
                padding: EdgeInsets.all(16.h),
                decoration: IconButtonStyleHelper.fillDeepOrange,
                child: CustomImageView(
                  imagePath: ImageConstant.imgStop,
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
  Widget _buildSixtyEight(BuildContext context) {
    return Row(
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
    );
  }

  /// Section Widget
  Widget _buildStat1(BuildContext context) {
    return SizedBox(
      height: 131.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 15.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return Stat2ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTooltip(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 110.h,
        vertical: 30.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder6,
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgTooltip,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.7,
            child: Text(
              "Total worked today",
              style: CustomTextStyles.titleSmallOnPrimary_2,
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            "5:35:08",
            style: CustomTextStyles.titleLargeOnPrimary,
          ),
        ],
      ),
    );
  }
}
