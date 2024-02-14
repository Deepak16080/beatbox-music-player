import 'package:flutter/material.dart';

/// This class defines the variables used in the [options_draweritem],
/// and is typically used to hold data that is passed between different parts of the application.
class OptionsModel {
  /// The title of the option.
  final String title;

  /// The icon of the option.
  final Icon icon;

  /// The route of the option.
  final String route;

  /// The constructor of the class.
  OptionsModel({
    required this.title,
    required this.icon,
    required this.route,
  });
}

OptionsModel optionsModel = OptionsModel(
  title: 'Profile',
  icon: Icon(Icons.person),
  route: 'Routes.PROFILE',
);
OptionsModel optionsModel1 = OptionsModel(
  title: 'Settings',
  icon: Icon(Icons.settings),
  route: 'Routes.SETTINGS',
);
OptionsModel optionsModel2 = OptionsModel(
  title: 'Help',
  icon: Icon(Icons.help),
  route: 'Routes.HELP',
);
OptionsModel optionsModel3 = OptionsModel(
  title: 'About',
  icon: Icon(Icons.info),
  route: 'Routes.ABOUT',
);
