import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Indraft".toUpperCase(),
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 2.v),
              SizedBox(
                height: 3.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 3,
                    activeDotColor: appTheme.limeA700,
                    dotColor: appTheme.limeA700,
                    dotHeight: 3.v,
                    dotWidth: 8.h,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                "Loading...",
                style: CustomTextStyles.titleMediumErrorContainer,
              ),
              SizedBox(height: 8.v),
            ],
          ),
        ),
      ),
    );
  }
}
