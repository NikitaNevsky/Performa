import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle.dart';
import 'package:performa/widgets/app_bar/appbar_title_image.dart';
import 'package:performa/widgets/app_bar/custom_app_bar.dart';
import 'package:performa/widgets/custom_elevated_button.dart';
import 'package:performa/widgets/custom_icon_button.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 13.v),
          child: Column(
            children: [
              Text(
                "Project Name",
                style: CustomTextStyles.titleSmallBlack900,
              ),
              SizedBox(height: 10.v),
              Divider(),
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: _buildItem7(
                  context,
                  safetyRules: "Site plans",
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: _buildItem7(
                  context,
                  safetyRules: "Safety rules",
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: _buildItem7(
                  context,
                  safetyRules: "My tasks",
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                height: 46.v,
                text: "Enter facility",
                margin: EdgeInsets.only(
                  left: 39.h,
                  right: 41.h,
                ),
                buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
                buttonTextStyle: CustomTextStyles.titleSmallOnPrimary_1,
              ),
              SizedBox(height: 7.v),
              CustomIconButton(
                height: 64.adaptSize,
                width: 64.adaptSize,
                padding: EdgeInsets.all(18.h),
                decoration: IconButtonStyleHelper.fillLimeATL32,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGrid,
                ),
              ),
              SizedBox(height: 28.v),
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
                SizedBox(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse148x48,
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        radius: BorderRadius.circular(
                          24.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse148x48,
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        radius: BorderRadius.circular(
                          24.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 2.v,
                    bottom: 1.v,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 20.v,
                        width: 63.h,
                        margin: EdgeInsets.only(right: 66.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Welcome,",
                                style: CustomTextStyles.titleSmallBluegray400,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Welcome,",
                                style: CustomTextStyles.titleSmallBluegray400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24.v,
                        width: 129.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            AppbarSubtitle(
                              text: "Gerund Malbert",
                            ),
                            AppbarSubtitle(
                              text: "Gerund Malbert",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgArrowRightOnprimarycontainer,
                  margin: EdgeInsets.only(
                    left: 126.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          SizedBox(
            height: 1.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Divider(),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Divider(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      styleType: Style.bgFill_5,
    );
  }

  /// Common widget
  Widget _buildItem7(
    BuildContext context, {
    required String safetyRules,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              safetyRules,
              style: theme.textTheme.titleSmall!.copyWith(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
          ),
        ],
      ),
    );
  }
}
