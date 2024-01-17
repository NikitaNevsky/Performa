import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Stat2ItemWidget extends StatelessWidget {
  const Stat2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 165.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 48.adaptSize,
                width: 48.adaptSize,
                padding: EdgeInsets.all(10.h),
                decoration: IconButtonStyleHelper.fillLimeATL15,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCalendar,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLightBulb,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.only(
                  left: 56.h,
                  bottom: 35.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.h,
                  bottom: 32.v,
                ),
                child: Text(
                  "4d",
                  style: CustomTextStyles.labelMediumDeeporange700,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.v),
          Text(
            "17d",
            style: theme.textTheme.titleLarge,
          ),
          Opacity(
            opacity: 0.8,
            child: Text(
              "Total worked days",
              style: CustomTextStyles.labelMediumOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
