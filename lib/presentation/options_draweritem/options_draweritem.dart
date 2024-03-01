import 'package:beatbox/Constant/app_color.dart';
import 'package:beatbox/core/app_export.dart';
import 'package:beatbox/widgets/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore_for_file: must_be_immutable
class OptionsDrawerItem extends StatelessWidget {
  bool isDarkMode;
  final Function toggleTheme;
  OptionsDrawerItem({Key? key, required this.isDarkMode, required this.toggleTheme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 36.v),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                IconButton(
                  onPressed: () {
                    onTapImgClose();
                  },
                  icon: FaIcon(
                    // ignore: deprecated_member_use
                    FontAwesomeIcons.times,
                    color: iconcolor,
                  ),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {
                      toggleTheme;
                      print(isDarkMode);
                    },
                    icon: Icon(
                      isDarkMode ? Icons.wb_sunny_outlined : Icons.dark_mode_outlined,
                      color: isDarkMode ? Colors.white : iconcolor,
                      size: 24.h,
                    ))
              ]),
              SizedBox(height: 42.v),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.profile);
                },
                child: Row(children: [
                  Icon(
                    Icons.person_2_outlined,
                    color: iconcolor,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text("lbl_profile".tr, style: Ts.semiBold18(isDarkMode ? textcolor : textcolor2)))
                ]),
              ),
              SizedBox(height: 34.v),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.likedsongs);
                },
                child: Row(children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    color: iconcolor,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 28.h),
                      child: Text("lbl_liked_songs".tr, style: Ts.semiBold18(isDarkMode ? textcolor : textcolor2)))
                ]),
              ),
              SizedBox(height: 32.v),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.language);
                },
                child: Row(children: [
                  FaIcon(
                    FontAwesomeIcons.earthAsia,
                    color: iconcolor,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text("lbl_language".tr, style: Ts.semiBold18(isDarkMode ? textcolor : textcolor2)))
                ]),
              ),
              SizedBox(height: 29.v),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.Contactus);
                },
                child: Row(children: [
                  FaIcon(
                    FontAwesomeIcons.message,
                    color: Color(0xff8996B8),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text("lbl_contact_us".tr, style: Ts.semiBold18(isDarkMode ? textcolor : textcolor2)))
                ]),
              ),
              SizedBox(height: 32.v),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.faq);
                },
                child: Row(children: [
                  Icon(Icons.help_outline, color: iconcolor),
                  Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text("lbl_faqs".tr, style: Ts.semiBold18(isDarkMode ? textcolor : textcolor2)))
                ]),
              ),
              SizedBox(height: 33.v),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.settings);
                },
                child: Row(children: [
                  Icon(Icons.settings_outlined, color: iconcolor),
                  Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text("lbl_settings".tr, style: Ts.semiBold18(isDarkMode ? textcolor : textcolor2)))
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
