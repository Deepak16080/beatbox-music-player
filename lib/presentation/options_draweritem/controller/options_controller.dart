import 'package:beatbox/core/app_export.dart';
import 'package:beatbox/presentation/options_draweritem/models/options_model.dart';
import 'package:flutter/material.dart';

class OptionsController extends GetxController {
  List<OptionsModel> optionsList = [
    OptionsModel(
      title: 'Profile',
      icon: Icon(Icons.person),
      route: 'Routes.PROFILE',
    ),
    OptionsModel(
      title: 'Settings',
      icon: Icon(Icons.settings),
      route: 'Routes.SETTINGS',
    ),
    OptionsModel(
      title: 'Help',
      icon: Icon(Icons.help),
      route: 'Routes.HELP',
    ),
    OptionsModel(
      title: 'About',
      icon: Icon(Icons.info),
      route: 'Routes.ABOUT',
    ),
  ];
}
