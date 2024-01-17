import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:performa/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgProject1,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: 345.h,
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 15.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgProject1,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25.v),
            SizedBox(
              height: 24.v,
              width: 52.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "House",
                      style: CustomTextStyles.titleMediumOnPrimary,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "House",
                      style: CustomTextStyles.titleMediumOnPrimary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.v),
            SizedBox(
              height: 16.v,
              width: 145.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Opacity(
                      opacity: 0.8,
                      child: Text(
                        "Plainfield, 2193 Counts Lane",
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Opacity(
                      opacity: 0.8,
                      child: Text(
                        "Plainfield, 2193 Counts Lane",
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
