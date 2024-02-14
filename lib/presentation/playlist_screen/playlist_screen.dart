import 'package:beatbox/core/app_export.dart';
import 'package:beatbox/widgets/app_bar/appbar_leading_image.dart';
import 'package:beatbox/widgets/app_bar/appbar_trailing_image.dart';
import 'package:beatbox/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../playlist_screen/widgets/userprofile_item_widget.dart';

class PlaylistScreen extends GetWidget {
  const PlaylistScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 16.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 29.h),
                  child: Text(
                    "lbl_liked_songs".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 21.v),
                SizedBox(
                  height: 831.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 29.h,
                            right: 197.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 142.v,
                                width: 147.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    // CustomImageView(
                                    //   imagePath: ImageConstant.imgMaskGroup,
                                    //   height: 93.v,
                                    //   width: 74.h,
                                    //   alignment: Alignment.bottomCenter,
                                    //   margin: EdgeInsets.only(bottom: 8.v),
                                    // ),
                                    // CustomImageView(
                                    //   imagePath:
                                    //       ImageConstant.imgMaskGroup261x261,
                                    //   height: 142.v,
                                    //   width: 147.h,
                                    //   alignment: Alignment.center,
                                    // ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12.v),
                              Text(
                                "msg_highest_in_the_room".tr,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleSmall,
                              ),
                              SizedBox(height: 6.v),
                              Text(
                                "lbl_travis_scott".tr.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 198.h,
                            right: 27.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 143.v,
                                width: 148.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 114.v,
                                        width: 93.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.indigo600,
                                          borderRadius: BorderRadius.circular(
                                            6.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    // CustomImageView(
                                    //   imagePath: ImageConstant.imgImage6143x148,
                                    //   height: 143.v,
                                    //   width: 148.h,
                                    //   radius: BorderRadius.circular(
                                    //     6.h,
                                    //   ),
                                    //   alignment: Alignment.center,
                                    // ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 11.v),
                              Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: Text(
                                  "lbl_moment_apart".tr,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Padding(
                                padding: EdgeInsets.only(left: 52.h),
                                child: Text(
                                  "lbl_odesza".tr,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildComponentTwo(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 40.v,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(bottom: 161.v),
                          decoration: BoxDecoration(
                            color: appTheme.gray900,
                          ),
                        ),
                      ),
                      _buildUserProfile(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 54.h,
      leading: AppbarLeadingImage(
        // imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 16.v,
          bottom: 15.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          // imagePath: ImageConstant.imgUserBlue50,
          margin: EdgeInsets.fromLTRB(30.h, 16.v, 30.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildComponentTwo() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 75.v,
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 202.v),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 8.v),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // CustomImageView(
                    //   imagePath: ImageConstant.imgMaskGroup261x261,
                    //   height: 66.adaptSize,
                    //   width: 66.adaptSize,
                    // ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 12.h,
                        top: 14.v,
                        bottom: 14.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_chaff_dust".tr,
                            style: CustomTextStyles.titleMedium18,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "lbl_hyonna".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    // CustomImageView(
                    //   imagePath: ImageConstant.imgRefresh,
                    //   height: 20.adaptSize,
                    //   width: 20.adaptSize,
                    //   margin: EdgeInsets.symmetric(vertical: 22.v),
                    // ),
                    // CustomImageView(
                    //   imagePath: ImageConstant.imgPause,
                    //   height: 23.adaptSize,
                    //   width: 23.adaptSize,
                    //   margin: EdgeInsets.only(
                    //     left: 16.h,
                    //     top: 21.v,
                    //     bottom: 21.v,
                    //   ),
                    // ),
                    // CustomImageView(
                    //   imagePath: ImageConstant.imgNext,
                    //   height: 20.adaptSize,
                    //   width: 20.adaptSize,
                    //   margin: EdgeInsets.fromLTRB(16.h, 22.v, 27.h, 22.v),
                    // ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 4.v,
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 8.v),
              ),
            ),
            SliderTheme(
              data: SliderThemeData(
                trackShape: RoundedRectSliderTrackShape(),
                activeTrackColor: appTheme.whiteA700,
                inactiveTrackColor: appTheme.whiteA700.withOpacity(0.31),
                thumbColor: appTheme.whiteA700,
                thumbShape: RoundSliderThumbShape(),
              ),
              child: Slider(
                value: 52.85,
                min: 0.0,
                max: 100.0,
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 29.h,
          right: 27.h,
          bottom: 213.v,
        ),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 190.v,
              crossAxisCount: 2,
              mainAxisSpacing: 15.h,
              crossAxisSpacing: 15.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return UserprofileItemWidget();
            },
          ),
        ),
      ),
    );
  }
}
