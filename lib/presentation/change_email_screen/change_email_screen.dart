import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/custom_elevated_button.dart';
import 'package:performa/widgets/custom_floating_text_field.dart';
import 'package:performa/widgets/custom_text_form_field.dart';

class ChangeEmailScreen extends StatelessWidget {
  ChangeEmailScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  TextEditingController emailController = TextEditingController();

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
                padding: EdgeInsets.only(top: 60.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text(
                              "Cancel",
                              style: CustomTextStyles.titleMediumBluegray400,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 61.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "Change Email",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Divider(),
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        "Current Email",
                        style: CustomTextStyles.labelMediumBluegray400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        "gerund.malbert@gmail.com",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 23.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        right: 15.h,
                      ),
                      child: CustomTextFormField(
                        controller: passwordController,
                        hintText: "********",
                        textInputType: TextInputType.visiblePassword,
                        alignment: Alignment.center,
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        right: 15.h,
                      ),
                      child: CustomFloatingTextField(
                        controller: emailController,
                        labelText: "New Email",
                        labelStyle: theme.textTheme.titleSmall!,
                        hintText: "New Email",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 30.v),
                    CustomElevatedButton(
                      text: "Change Email",
                      margin: EdgeInsets.only(
                        left: 14.h,
                        right: 15.h,
                      ),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: CustomTextStyles.titleSmallOnPrimary_1,
                      alignment: Alignment.center,
                    ),
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
}
