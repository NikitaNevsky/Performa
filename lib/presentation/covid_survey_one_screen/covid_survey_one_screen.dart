import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:performa/widgets/app_bar/appbar_trailing_image.dart';
import 'package:performa/widgets/app_bar/custom_app_bar.dart';
import 'package:performa/widgets/custom_elevated_button.dart';

class CovidSurveyOneScreen extends StatelessWidget {
  const CovidSurveyOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(15.h),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 23.v,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Covid Survey".toUpperCase(),
                      style: CustomTextStyles.titleSmallGray10001,
                    ),
                    SizedBox(height: 93.v),
                    SizedBox(
                      width: 302.h,
                      child: Text(
                        "Have you travelled out of NSW state or been in close contact with anyone who has travelled to out of NSW state within the last 14 days?",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeGray10001.copyWith(
                          height: 1.64,
                        ),
                      ),
                    ),
                    SizedBox(height: 83.v),
                    Opacity(
                      opacity: 0.7,
                      child: Text(
                        "1 — 3",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              _buildAnswers(context),
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
      height: 127.v,
      leadingWidth: 63.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse148x48,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 59.v,
          bottom: 20.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(
          left: 10.h,
          top: 61.v,
          bottom: 21.v,
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
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgArrowRightOnprimarycontainer,
          margin: EdgeInsets.fromLTRB(15.h, 67.v, 15.h, 28.v),
        ),
      ],
      styleType: Style.bgStyle,
    );
  }

  /// Section Widget
  Widget _buildAnswers(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomElevatedButton(
            text: "Yes",
            margin: EdgeInsets.only(right: 7.h),
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            text: "No",
            margin: EdgeInsets.only(left: 7.h),
            buttonStyle: CustomButtonStyles.fillLimeA,
          ),
        ),
      ],
    );
  }
}
