import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:performa/widgets/app_bar/custom_app_bar.dart';
import 'package:performa/widgets/custom_elevated_button.dart';

class WhitecardScreen extends StatelessWidget {
  const WhitecardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSeven(context),
              SizedBox(height: 22.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Text(
                    "Cartification",
                    style: CustomTextStyles.titleSmallBold,
                  ),
                ),
              ),
              Spacer(),
              SizedBox(height: 70.v),
              _buildTwentyFour(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(
          left: 15.h,
          top: 61.v,
          bottom: 17.v,
        ),
        child: Row(
          children: [
            AppbarSubtitleOne(
              text: "Back",
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            AppbarSubtitle(
              text: "Contractor Sign Up",
              margin: EdgeInsets.only(
                left: 55.h,
                top: 1.v,
              ),
            ),
          ],
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return SizedBox(
      height: 3.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(
                color: appTheme.gray300,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            width: 165.h,
            text: "Back",
            buttonTextStyle: CustomTextStyles.titleSmallErrorContainer,
          ),
          CustomElevatedButton(
            width: 165.h,
            text: "Finish",
            margin: EdgeInsets.only(left: 15.h),
            buttonStyle: CustomButtonStyles.fillLimeA,
          ),
        ],
      ),
    );
  }
}
