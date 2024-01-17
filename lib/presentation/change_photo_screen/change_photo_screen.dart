import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:performa/widgets/app_bar/appbar_title.dart';
import 'package:performa/widgets/app_bar/custom_app_bar.dart';
import 'package:performa/widgets/custom_elevated_button.dart';

class ChangePhotoScreen extends StatelessWidget {
  const ChangePhotoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 135.v,
                    right: 15.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse1,
                        height: 112.adaptSize,
                        width: 112.adaptSize,
                        radius: BorderRadius.circular(
                          56.h,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "Change Image",
                        style: CustomTextStyles.titleMediumPrimary,
                      ),
                      SizedBox(height: 22.v),
                      _buildItem1(context),
                      SizedBox(height: 10.v),
                      _buildItem3(
                        context,
                        medial: "Emergency Contact Details",
                      ),
                      SizedBox(height: 10.v),
                      _buildItem3(
                        context,
                        medial: "Medial",
                      ),
                      SizedBox(height: 10.v),
                      _buildItem3(
                        context,
                        medial: "Certification",
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 763.v,
                  width: double.maxFinite,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 49.v,
                  ),
                  decoration: AppDecoration.fillBlack,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      _buildNineteen(context),
                      SizedBox(height: 8.v),
                      CustomElevatedButton(
                        height: 56.v,
                        text: "Cancel",
                        buttonStyle: CustomButtonStyles.fillOnPrimary,
                        buttonTextStyle: theme.textTheme.titleMedium!,
                      ),
                    ],
                  ),
                ),
              ),
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
            padding: EdgeInsets.only(
              left: 14.h,
              right: 15.h,
            ),
            child: Row(
              children: [
                AppbarSubtitleOne(
                  text: "Back",
                ),
                AppbarSubtitle(
                  text: "Profile",
                  margin: EdgeInsets.only(left: 107.h),
                ),
                AppbarTitle(
                  text: "Done",
                  margin: EdgeInsets.only(left: 102.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
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
  Widget _buildItem1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 4.v,
            ),
            child: Text(
              "Personal Information",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(),
          Container(
            width: 28.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillDeepOrange.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder14,
            ),
            child: Text(
              "2",
              style: CustomTextStyles.titleSmallOnPrimary_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 4.v,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 17.v),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Change Profile Photo",
            style: CustomTextStyles.titleMediumMedium,
          ),
          SizedBox(height: 17.v),
          Divider(
            color: theme.colorScheme.primaryContainer,
          ),
          SizedBox(height: 15.v),
          Text(
            "Remove Current Photo",
            style: CustomTextStyles.titleMediumDeeporange700,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildItem3(
    BuildContext context, {
    required String medial,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            medial,
            style: theme.textTheme.titleSmall!.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ],
      ),
    );
  }
}
