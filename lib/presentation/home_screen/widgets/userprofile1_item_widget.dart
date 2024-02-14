
// import '../models/userprofile1_item_model.dart';
// import 'package:beatbox/core/app_export.dart';
// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class Userprofile1ItemWidget extends StatelessWidget {
//   Userprofile1ItemWidget(
//     this.userprofile1ItemModelObj, {
//     Key? key,
//   }) : super(
//           key: key,
//         );

//   Userprofile1ItemModel userprofile1ItemModelObj;


//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 190.h,
//       child: Column(
//         children: [
//           SizedBox(
//             height: 190.adaptSize,
//             width: 190.adaptSize,
//             child: Stack(
//               alignment: Alignment.bottomLeft,
//               children: [
//                  CustomImageView(
//                     imagePath: userprofile1ItemModelObj.userImage!.value,
//                     height: 190.adaptSize,
//                     width: 190.adaptSize,
//                     alignment: Alignment.center,
//                   ),
//          CustomImageView(
//                     imagePath: userprofile1ItemModelObj.userImage1!.value,
//                     height: 161.v,
//                     width: 154.h,
//                     alignment: Alignment.bottomLeft,
//                     margin: EdgeInsets.only(
//                       left: 14.h,
//                       bottom: 6.v,
//                     ),
//                   ),
              
//               ],
//             ),
//           ),
//           SizedBox(height: 15.v),
//           Text(
//               userprofile1ItemModelObj.songTitle!.value,
//               style: theme.textTheme.titleMedium,
//             ),
  
//           SizedBox(height: 5.v),
//           Text(
//               userprofile1ItemModelObj.bandName!.value,
//               style: theme.textTheme.bodySmall,
//             ),
       
//         ],
//       ),
//     );
//   }
// }
