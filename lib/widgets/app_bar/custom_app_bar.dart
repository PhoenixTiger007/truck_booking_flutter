import 'package:flutter/material.dart';
import 'package:truck_booking_app/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key? key,required this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions}):super(
    key: key,
  );

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
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
        size.width,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFillblueA200:
        return Container(
          height: getVerticalSize(
            70.00,
          ),
          width: size.width,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
        );

      default:
        return null;
    }
  }
}

enum Style {
  bgFillblueA200,
}
