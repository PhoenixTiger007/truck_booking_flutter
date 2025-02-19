import 'package:flutter/material.dart';
import 'package:truck_booking_app/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtSFUITextBold21Black900.copyWith(
            height: getVerticalSize(
              1.04,
            ),
            color: ColorConstant.black900,
          ),
        ),
      ),
    );
  }
}
