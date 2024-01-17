import '../choose_project_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle.dart';
import 'package:performa/widgets/app_bar/appbar_title_image.dart';
import 'package:performa/widgets/app_bar/custom_app_bar.dart';

class ChooseProjectScreen extends StatelessWidget {
  const ChooseProjectScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 23.v,
          ),
          child: Column(
            children: [
              _buildEightySeven(context),
              SizedBox(height: 13.v),
              _buildUserProfile(context),
              Spacer(),
              SizedBox(height: 46.v),
              SizedBox(
                height: 26.v,
                width: 68.h,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Back",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 26.adaptSize,
                      width: 26.adaptSize,
                      alignment: Alignment.centerLeft,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowDown,
                            height: 26.adaptSize,
                            width: 26.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 3.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "Back",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
      styleType: Style.bgFill_3,
    );
  }

  /// Section Widget
  Widget _buildEightySeven(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 20.v,
          width: 105.h,
          margin: EdgeInsets.only(top: 1.v),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Choose Project",
                  style: CustomTextStyles.titleSmallBold,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Choose Project",
                  style: CustomTextStyles.titleSmallBold,
                ),
              ),
            ],
          ),
        ),
        Text(
          "3 items",
          style: CustomTextStyles.titleSmallBluegray400,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 15.v,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return UserprofileItemWidget();
      },
    );
  }
}
