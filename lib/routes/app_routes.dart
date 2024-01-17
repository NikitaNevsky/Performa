import 'package:flutter/material.dart';
import 'package:performa/presentation/splash_screen/splash_screen.dart';
import 'package:performa/presentation/auth_screen/auth_screen.dart';
import 'package:performa/presentation/registration_screen/registration_screen.dart';
import 'package:performa/presentation/personal_screen/personal_screen.dart';
import 'package:performa/presentation/emergence_contact_screen/emergence_contact_screen.dart';
import 'package:performa/presentation/medical_screen/medical_screen.dart';
import 'package:performa/presentation/whitecard_screen/whitecard_screen.dart';
import 'package:performa/presentation/profile_screen/profile_screen.dart';
import 'package:performa/presentation/change_photo_screen/change_photo_screen.dart';
import 'package:performa/presentation/personal_info_screen/personal_info_screen.dart';
import 'package:performa/presentation/change_email_screen/change_email_screen.dart';
import 'package:performa/presentation/covid_survey_one_screen/covid_survey_one_screen.dart';
import 'package:performa/presentation/covid_survey_two_screen/covid_survey_two_screen.dart';
import 'package:performa/presentation/covid_survey_three_screen/covid_survey_three_screen.dart';
import 'package:performa/presentation/choose_project_screen/choose_project_screen.dart';
import 'package:performa/presentation/time_tracker_screen/time_tracker_screen.dart';
import 'package:performa/presentation/stopped_tracker_screen/stopped_tracker_screen.dart';
import 'package:performa/presentation/list_of_projects_screen/list_of_projects_screen.dart';
import 'package:performa/presentation/agreements_screen/agreements_screen.dart';
import 'package:performa/presentation/project_screen/project_screen.dart';
import 'package:performa/presentation/scan_qr_code_screen/scan_qr_code_screen.dart';
import 'package:performa/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String authScreen = '/auth_screen';

  static const String registrationScreen = '/registration_screen';

  static const String personalScreen = '/personal_screen';

  static const String emergenceContactScreen = '/emergence_contact_screen';

  static const String medicalScreen = '/medical_screen';

  static const String whitecardScreen = '/whitecard_screen';

  static const String profileScreen = '/profile_screen';

  static const String changePhotoScreen = '/change_photo_screen';

  static const String personalInfoScreen = '/personal_info_screen';

  static const String changeEmailScreen = '/change_email_screen';

  static const String covidSurveyOneScreen = '/covid_survey_one_screen';

  static const String covidSurveyTwoScreen = '/covid_survey_two_screen';

  static const String covidSurveyThreeScreen = '/covid_survey_three_screen';

  static const String chooseProjectScreen = '/choose_project_screen';

  static const String timeTrackerScreen = '/time_tracker_screen';

  static const String stoppedTrackerScreen = '/stopped_tracker_screen';

  static const String listOfProjectsScreen = '/list_of_projects_screen';

  static const String agreementsScreen = '/agreements_screen';

  static const String projectScreen = '/project_screen';

  static const String scanQrCodeScreen = '/scan_qr_code_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    authScreen: (context) => AuthScreen(),
    registrationScreen: (context) => RegistrationScreen(),
    personalScreen: (context) => PersonalScreen(),
    emergenceContactScreen: (context) => EmergenceContactScreen(),
    medicalScreen: (context) => MedicalScreen(),
    whitecardScreen: (context) => WhitecardScreen(),
    profileScreen: (context) => ProfileScreen(),
    changePhotoScreen: (context) => ChangePhotoScreen(),
    personalInfoScreen: (context) => PersonalInfoScreen(),
    changeEmailScreen: (context) => ChangeEmailScreen(),
    covidSurveyOneScreen: (context) => CovidSurveyOneScreen(),
    covidSurveyTwoScreen: (context) => CovidSurveyTwoScreen(),
    covidSurveyThreeScreen: (context) => CovidSurveyThreeScreen(),
    chooseProjectScreen: (context) => ChooseProjectScreen(),
    timeTrackerScreen: (context) => TimeTrackerScreen(),
    stoppedTrackerScreen: (context) => StoppedTrackerScreen(),
    listOfProjectsScreen: (context) => ListOfProjectsScreen(),
    agreementsScreen: (context) => AgreementsScreen(),
    projectScreen: (context) => ProjectScreen(),
    scanQrCodeScreen: (context) => ScanQrCodeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
