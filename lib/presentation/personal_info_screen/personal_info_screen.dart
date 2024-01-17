import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/custom_floating_text_field.dart';

class PersonalInfoScreen extends StatelessWidget {
  PersonalInfoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController lastNameController = TextEditingController();

  TextEditingController occupationvalueController = TextEditingController();

  TextEditingController labelController = TextEditingController();

  TextEditingController employervalueController = TextEditingController();

  TextEditingController contactNumbervalueController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 60.v,
                  right: 14.h,
                ),
                child: Column(
                  children: [
                    _buildCancel(context),
                    SizedBox(height: 49.v),
                    _buildLabel(context),
                    SizedBox(height: 15.v),
                    _buildLastName(context),
                    SizedBox(height: 15.v),
                    _buildOccupationvalue(context),
                    SizedBox(height: 15.v),
                    _buildLabel1(context),
                    SizedBox(height: 15.v),
                    _buildEmployervalue(context),
                    SizedBox(height: 15.v),
                    _buildContactNumbervalue(context),
                    SizedBox(height: 5.v),
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
  Widget _buildCancel(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Cancel",
          style: CustomTextStyles.titleMediumBluegray400,
        ),
        Spacer(
          flex: 41,
        ),
        Text(
          "Personal Information",
          style: theme.textTheme.titleMedium,
        ),
        Spacer(
          flex: 58,
        ),
        Text(
          "Done",
          style: CustomTextStyles.titleMediumPrimary,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLabel(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email",
                style: CustomTextStyles.labelMediumBluegray400,
              ),
              Text(
                "gerund.malbert@gmail.com",
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 7.v,
            ),
            child: Text(
              "Change",
              style: CustomTextStyles.titleSmallSecondaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return CustomFloatingTextField(
      controller: lastNameController,
      labelText: "First and Last Name",
      labelStyle: theme.textTheme.titleSmall!,
      hintText: "First and Last Name",
    );
  }

  /// Section Widget
  Widget _buildOccupationvalue(BuildContext context) {
    return CustomFloatingTextField(
      controller: occupationvalueController,
      labelText: "Occupation",
      labelStyle: theme.textTheme.titleSmall!,
      hintText: "Occupation",
    );
  }

  /// Section Widget
  Widget _buildLabel1(BuildContext context) {
    return CustomFloatingTextField(
      controller: labelController,
      labelText: "Years in Industry",
      labelStyle: CustomTextStyles.titleSmallDeeporange700,
      hintText: "Years in Industry",
    );
  }

  /// Section Widget
  Widget _buildEmployervalue(BuildContext context) {
    return CustomFloatingTextField(
      controller: employervalueController,
      labelText: "Employer",
      labelStyle: CustomTextStyles.titleSmallDeeporange700,
      hintText: "Employer",
    );
  }

  /// Section Widget
  Widget _buildContactNumbervalue(BuildContext context) {
    return CustomFloatingTextField(
      controller: contactNumbervalueController,
      labelText: "Contact Number",
      labelStyle: theme.textTheme.titleSmall!,
      hintText: "Contact Number",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.number,
    );
  }
}
