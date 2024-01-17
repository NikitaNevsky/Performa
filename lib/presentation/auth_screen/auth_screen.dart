import 'package:flutter/material.dart';
import 'package:performa/core/app_export.dart';
import 'package:performa/widgets/custom_elevated_button.dart';
import 'package:performa/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 123.v,
                ),
                child: Column(
                  children: [
                    Text(
                      "Welcome to",
                      style: CustomTextStyles.titleMediumErrorContainer,
                    ),
                    Text(
                      "Indraft".toUpperCase(),
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 4.v),
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
                    Spacer(
                      flex: 47,
                    ),
                    _buildEmail(context),
                    SizedBox(height: 15.v),
                    _buildPassword(context),
                    SizedBox(height: 25.v),
                    _buildSignIn(context),
                    Spacer(
                      flex: 52,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildSignUp(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign In",
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      width: 165.h,
      text: "Sign Up",
      margin: EdgeInsets.only(
        left: 105.h,
        right: 105.h,
        bottom: 17.v,
      ),
      buttonStyle: CustomButtonStyles.fillOnPrimary,
      buttonTextStyle: CustomTextStyles.titleSmallGray500,
    );
  }
}
