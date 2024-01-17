import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Stat1ItemWidget extends StatelessWidget {
  const Stat1ItemWidget({Key? key})
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
      child: Row(
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(10.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgCalendar,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
          ),
        ],
      ),
    );
  }
}
