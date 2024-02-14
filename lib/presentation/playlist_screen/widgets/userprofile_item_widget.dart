import 'package:beatbox/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 145.v,
            width: 151.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  // imagePath: userprofileItemModelObj.userImage1!.value,
                  height: 123.adaptSize,
                  width: 123.adaptSize,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(
                    left: 11.h,
                    bottom: 4.v,
                  ),
                ),

                //  CustomImageView(
                //       imagePath: userprofileItemModelObj.userImage2!.value,
                //       height: 145.v,
                //       width: 151.h,
                //       alignment: Alignment.center,
                //     ),
                //   ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          // Padding(
          //   padding: EdgeInsets.only(left: 47.h),
          //   child:Text(
          //       userprofileItemModelObj.userText1!.value,
          //       style: theme.textTheme.titleSmall,
          //     ),
          //   ),

          SizedBox(height: 5.v),
          // Padding(
          //   padding: EdgeInsets.only(left: 30.h),
          //   child: Obx(
          //     () => Text(
          //       style: theme.textTheme.bodySmall,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
