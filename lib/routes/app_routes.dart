import 'package:beatbox/core/app_export.dart';
import 'package:beatbox/presentation/Playing_now_screen/playing_now_screen.dart';
import 'package:beatbox/presentation/auth/login.dart';
import 'package:beatbox/presentation/auth/signupscreen.dart';
import 'package:beatbox/presentation/home_screen/home_screen.dart';
import 'package:beatbox/presentation/options_draweritem/Draweritems/Faq.dart';
import 'package:beatbox/presentation/options_draweritem/Draweritems/contactus.dart';
import 'package:beatbox/presentation/options_draweritem/Draweritems/language.dart';
import 'package:beatbox/presentation/options_draweritem/Draweritems/likedsongs.dart';
import 'package:beatbox/presentation/options_draweritem/Draweritems/profile.dart';
import 'package:beatbox/presentation/options_draweritem/Draweritems/setting.dart';

int? index;

class AppRoutes {
  static const String login = '/';
  static const String SignUp = '/SignUp';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String faq = '/faq';
  static const String about = '/about';
  static const String playlist = '/playlist';
  static const String likedsongs = '/likedsongs';
  static const String playingnow = '/playingnowscreen';
  static const String language = '/language';
  static const String Contactus = '/contactus';

  static List<GetPage> pages = [
    GetPage(
      name: login,
      page: () => LoginScreen(),
    ),
    GetPage(name: SignUp, page: SignUpScreen().obs),
    GetPage(
      name: home,
      page: () => Homescreen(),
    ),
    GetPage(
      name: playingnow,
      page: () => PlayingNowScreen(),
    ),
    GetPage(
      name: profile,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: likedsongs,
      page: () => LikedSongsPage(),
    ),
    GetPage(
      name: language,
      page: () => LanguagePage(),
    ),
    GetPage(name: Contactus, page: () => ContactusPage()),
    GetPage(name: faq, page: () => Faqpage()),
    GetPage(
      name: settings,
      page: () => SettingPage(),
    ),
  ];

  static get index => index;
}
