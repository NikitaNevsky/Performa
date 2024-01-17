import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/custom_outlined_button.dart';

class ScanQrCodeScreen extends StatelessWidget {
  const ScanQrCodeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup109,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 40.h,
              vertical: 59.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Spacer(
                  flex: 56,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrame,
                  height: 295.adaptSize,
                  width: 295.adaptSize,
                  radius: BorderRadius.circular(
                    2.h,
                  ),
                ),
                Spacer(
                  flex: 43,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBackToSignIn(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackToSignIn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 105.h,
        right: 105.h,
        bottom: 59.v,
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(-0.08, -0.35),
          end: Alignment(0.92, 1.66),
          colors: [
            theme.colorScheme.onPrimary.withOpacity(1),
            theme.colorScheme.onPrimary.withOpacity(0),
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        child: CustomOutlinedButton(
          width: 165.h,
          text: "Back to Sign In",
          leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowdownOnprimary,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
        ),
      ),
    );
  }
}
