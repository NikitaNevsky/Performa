import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Auth",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.authScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registrationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Personal",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.personalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Emergence Contact",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.emergenceContactScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Medical",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.medicalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhiteCard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whitecardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change Photo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.changePhotoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Personal Info",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.personalInfoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change email",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.changeEmailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Covid survey One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.covidSurveyOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Covid survey Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.covidSurveyTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Covid survey Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.covidSurveyThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Choose project",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chooseProjectScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Time Tracker",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.timeTrackerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Stopped tracker",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.stoppedTrackerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "List of projects",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.listOfProjectsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Agreements",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.agreementsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Project screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.projectScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Scan QR code",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.scanQrCodeScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
