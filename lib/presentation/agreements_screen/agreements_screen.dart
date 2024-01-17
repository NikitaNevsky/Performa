import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/custom_elevated_button.dart';

class AgreementsScreen extends StatelessWidget {
  const AgreementsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 44.v),
          child: Column(
            children: [
              SizedBox(
                height: 585.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    _buildTwenty(context),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 126.h,
                          vertical: 198.v,
                        ),
                        decoration: AppDecoration.fillBlueGray,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 99.v),
                            Text(
                              "PDF",
                              style: theme.textTheme.displayLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              _buildAnswers(context),
              SizedBox(height: 19.v),
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
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 1.v,
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 78.v),
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
    );
  }

  /// Section Widget
  Widget _buildAnswers(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            width: 165.h,
            text: "Yes",
          ),
          CustomElevatedButton(
            width: 165.h,
            text: "No",
            margin: EdgeInsets.only(left: 15.h),
            buttonStyle: CustomButtonStyles.fillLimeA,
          ),
        ],
      ),
    );
  }
}
