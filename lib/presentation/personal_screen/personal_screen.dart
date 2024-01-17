import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle.dart';
import 'package:performa/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:performa/widgets/app_bar/custom_app_bar.dart';
import 'package:performa/widgets/custom_elevated_button.dart';
import 'package:performa/widgets/custom_floating_text_field.dart';

class PersonalScreen extends StatelessWidget {
  PersonalScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController lastNameController = TextEditingController();

  TextEditingController labeloccupationController = TextEditingController();

  TextEditingController labelController = TextEditingController();

  TextEditingController labelemployerController = TextEditingController();

  TextEditingController labelcontactnumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildTen(context),
                    SizedBox(height: 22.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: Text(
                          "Personal Information",
                          style: CustomTextStyles.titleSmallBold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.v),
                    _buildLastName(context),
                    SizedBox(height: 15.v),
                    _buildLabeloccupation(context),
                    SizedBox(height: 15.v),
                    _buildLabel(context),
                    SizedBox(height: 15.v),
                    _buildLabelemployer(context),
                    SizedBox(height: 15.v),
                    _buildLabelcontactnumber(context),
                    Spacer(),
                    SizedBox(height: 70.v),
                    _buildSixtySeven(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(
          left: 15.h,
          top: 61.v,
          bottom: 17.v,
        ),
        child: Row(
          children: [
            AppbarSubtitleOne(
              text: "Back",
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            AppbarSubtitle(
              text: "Contractor Sign Up",
              margin: EdgeInsets.only(
                left: 55.h,
                top: 1.v,
              ),
            ),
          ],
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return SizedBox(
      height: 3.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(
                color: appTheme.gray300,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 94.h,
              child: Divider(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomFloatingTextField(
        controller: lastNameController,
        labelText: "First and Last Name",
        labelStyle: theme.textTheme.titleSmall!,
        hintText: "First and Last Name",
      ),
    );
  }

  /// Section Widget
  Widget _buildLabeloccupation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomFloatingTextField(
        controller: labeloccupationController,
        labelText: "Occupation",
        labelStyle: theme.textTheme.titleSmall!,
        hintText: "Occupation",
      ),
    );
  }

  /// Section Widget
  Widget _buildLabel(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomFloatingTextField(
        controller: labelController,
        labelText: "Years in Industry",
        labelStyle: CustomTextStyles.titleSmallDeeporange700,
        hintText: "Years in Industry",
      ),
    );
  }

  /// Section Widget
  Widget _buildLabelemployer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomFloatingTextField(
        controller: labelemployerController,
        labelText: "Employer",
        labelStyle: CustomTextStyles.titleSmallDeeporange700,
        hintText: "Employer",
      ),
    );
  }

  /// Section Widget
  Widget _buildLabelcontactnumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomFloatingTextField(
        controller: labelcontactnumberController,
        labelText: "Contact Number",
        labelStyle: theme.textTheme.titleSmall!,
        hintText: "Contact Number",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.number,
      ),
    );
  }

  /// Section Widget
  Widget _buildBack(BuildContext context) {
    return CustomElevatedButton(
      width: 165.h,
      text: "Back",
      buttonTextStyle: CustomTextStyles.titleSmallErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
      width: 165.h,
      text: "Next",
      margin: EdgeInsets.only(left: 15.h),
      buttonStyle: CustomButtonStyles.fillLimeA,
    );
  }

  /// Section Widget
  Widget _buildSixtySeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildBack(context),
          _buildNext(context),
        ],
      ),
    );
  }
}
