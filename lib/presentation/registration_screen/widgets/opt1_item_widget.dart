import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';

// ignore: must_be_immutable
class Opt1ItemWidget extends StatelessWidget {
  const Opt1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineLimeA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 48.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.gray100,
              borderRadius: BorderRadius.circular(
                9.h,
              ),
              border: Border.all(
                color: appTheme.limeA700,
                width: 6.h,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Visitor",
                    style: CustomTextStyles.titleSmallBold,
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 277.h,
                    child: Text(
                      "You’re client. You want to track progress of development",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallBluegray400.copyWith(
                        height: 1.57,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
