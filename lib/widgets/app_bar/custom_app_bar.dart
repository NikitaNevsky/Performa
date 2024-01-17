import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:performa/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 104.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 104.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgStyle_1:
        return Container(
          height: 127.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup44,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgStyle_2:
        return Container(
          height: 127.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup44,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgStyle:
        return Container(
          height: 127.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup44,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      case Style.bgFill_1:
        return Container(
          height: 1.v,
          width: double.maxFinite,
          margin: EdgeInsets.only(
            top: 49.07.v,
            bottom: 5.9300003.v,
          ),
          decoration: BoxDecoration(
            color: appTheme.gray300,
          ),
        );
      case Style.bgFill_2:
        return Container(
          height: 1.v,
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 43.14.v),
          decoration: BoxDecoration(
            color: appTheme.gray300,
          ),
        );
      case Style.bgFill_5:
        return Stack(
          children: [
            Container(
              height: 1.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 63.v),
              decoration: BoxDecoration(
                color: appTheme.gray300,
              ),
            ),
            Container(
              height: 1.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 63.v),
              decoration: BoxDecoration(
                color: appTheme.gray300,
              ),
            ),
          ],
        );
      case Style.bgFill_3:
        return Stack(
          children: [
            Container(
              height: 1.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 63.v),
              decoration: BoxDecoration(
                color: appTheme.gray300,
              ),
            ),
            Container(
              height: 1.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 63.v),
              decoration: BoxDecoration(
                color: appTheme.gray300,
              ),
            ),
          ],
        );
      case Style.bgFill:
        return Container(
          height: 104.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        );
      case Style.bgFill_4:
        return Container(
          height: 1.v,
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 63.v),
          decoration: BoxDecoration(
            color: appTheme.gray300,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgStyle_1,
  bgStyle_2,
  bgStyle,
  bgFill_1,
  bgFill_2,
  bgFill_5,
  bgFill_3,
  bgFill,
  bgFill_4,
}
