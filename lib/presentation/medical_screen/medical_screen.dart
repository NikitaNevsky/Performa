import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:performa/widgets/app_bar/custom_app_bar.dart';
import 'package:performa/widgets/custom_elevated_button.dart';
import 'package:performa/widgets/custom_text_form_field.dart';

class MedicalScreen extends StatelessWidget {
  MedicalScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController keyFourController = TextEditingController();

  TextEditingController keyFiveController = TextEditingController();

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
              _buildEight(context),
              SizedBox(height: 22.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Text(
                    "Medical",
                    style: CustomTextStyles.titleSmallBold,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 307.h,
                  margin: EdgeInsets.only(
                    left: 15.h,
                    right: 52.h,
                  ),
                  child: Text(
                    "Are You Taking Any Prescribed Medication That  May Be Necessary In The Event of An Emergency",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelLarge!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              _buildKeyFour(context),
              SizedBox(height: 15.v),
              _buildKeyFive(context),
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
  Widget _buildEight(BuildContext context) {
    return SizedBox(
      height: 3.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
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
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 282.h,
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
  Widget _buildKeyFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomTextFormField(
        controller: keyFourController,
        hintText: "Type anything",
        maxLines: 4,
      ),
    );
  }

  /// Section Widget
  Widget _buildKeyFive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomTextFormField(
        controller: keyFiveController,
        hintText: "Blood Type",
        textInputAction: TextInputAction.done,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 17.v, 14.h, 17.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgCheckmark,
            height: 14.adaptSize,
            width: 14.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 48.v,
        ),
        contentPadding: EdgeInsets.only(
          left: 14.h,
          top: 14.v,
          bottom: 14.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBack(BuildContext context) {
    return CustomElevatedButton(
      width: 165.h,
      text: "Back",
      buttonTextStyle: CustomTextStyles.titleSmallErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
      width: 165.h,
      text: "Next",
      margin: EdgeInsets.only(left: 15.h),
      buttonStyle: CustomButtonStyles.fillLimeA,
    );
  }

  /// Section Widget
  Widget _buildTwentyFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildBack(context),
          _buildNext(context),
        ],
      ),
    );
  }
}
