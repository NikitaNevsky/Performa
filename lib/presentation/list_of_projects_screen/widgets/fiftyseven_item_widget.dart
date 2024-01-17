import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';

// ignore: must_be_immutable
class FiftysevenItemWidget extends StatelessWidget {
  const FiftysevenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 18.v),
            child: Text(
              "Corporate Building",
              style: CustomTextStyles.titleMediumMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkLimeA700,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 23.v,
            ),
          ),
        ],
      ),
    );
  }
}
