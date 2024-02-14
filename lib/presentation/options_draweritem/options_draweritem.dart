import 'package:beatbox/Constant/app_color.dart';
import 'package:beatbox/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore_for_file: must_be_immutable
class OptionsDraweritem extends StatelessWidget {
  bool isDarkMode = false;
  OptionsDraweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            color: backgroundColor,
            padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 36.v),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.close,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 7.v),
                    onTap: () {
                      onTapImgClose();
                    }),
                Spacer(),
                IconButton(
                    onPressed: () {
                      isDarkMode = !isDarkMode;
                    },
                    icon: Icon(
                      isDarkMode ? Icons.brightness_4_outlined : Icons.dark_mode_outlined,
                      color: iconcolor,
                      size: 24.h,
                    ))
              ]),
              SizedBox(height: 42.v),
              GestureDetector(
                onTap: () {},
                child: Row(children: [
                  Icon(
                    Icons.person_2_outlined,
                    color: iconcolor,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text("lbl_profile".tr, style: theme.textTheme.titleLarge))
                ]),
              ),
              SizedBox(height: 34.v),
              GestureDetector(
                onTap: () {},
                child: Row(children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    color: iconcolor,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 28.h),
                      child: Text("lbl_liked_songs".tr, style: theme.textTheme.titleLarge))
                ]),
              ),
              SizedBox(height: 32.v),
              GestureDetector(
                onTap: () {},
                child: Row(children: [
                  FaIcon(
                    FontAwesomeIcons.earthAsia,
                    color: iconcolor,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text("lbl_language".tr, style: theme.textTheme.titleLarge))
                ]),
              ),
              SizedBox(height: 29.v),
              GestureDetector(
                onTap: () {},
                child: Row(children: [
                  FaIcon(
                    FontAwesomeIcons.message,
                    color: Color(0xff8996B8),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text("lbl_contact_us".tr, style: theme.textTheme.titleLarge))
                ]),
              ),
              SizedBox(height: 32.v),
              GestureDetector(
                onTap: () {},
                child: Row(children: [
                  Icon(Icons.help_outline, color: iconcolor),
                  Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text("lbl_faqs".tr, style: theme.textTheme.titleLarge))
                ]),
              ),
              SizedBox(height: 33.v),
              GestureDetector(
                onTap: () {},
                child: Row(children: [
                  Icon(Icons.settings_outlined, color: iconcolor),
                  Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text("lbl_settings".tr, style: theme.textTheme.titleLarge))
                ]),
              ),
              SizedBox(height: 33.v)
            ])));
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }
}
