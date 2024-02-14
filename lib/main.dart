import 'package:flutter/material.dart';

import 'core/app_export.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
    // final track = tracks[index];
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        translations: AppLocalization(),
        locale: Get.deviceLocale, //for setting localization strings
        fallbackLocale: Locale('en', 'US'),
        title: 'beatbox',
        initialRoute: AppRoutes.home,
        getPages: AppRoutes.pages,
      );
    });
  }
}
