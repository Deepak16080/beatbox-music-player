import 'package:beatbox/core/app_export.dart';
import 'package:beatbox/presentation/Playing_now_screen/playing_now_screen.dart';
import 'package:beatbox/presentation/home_screen/home_screen.dart';

int? index;

class AppRoutes {
  static const String home = '/';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String faq = '/faq';
  static const String about = '/about';
  static const String login = '/login';
  static const String playlist = '/playlist';
  static const String likedsongs = '/likedsongs';
  static const String playingnow = '/playingnowscreen';
  static const String languange = '/languange';
  static const String Contactus = '/contactus';

  static List<GetPage> pages = [
    GetPage(
      name: home,
      page: () => Homescreen(),
    ),
    GetPage(
      name: playingnow,
      page: () => PlayingNowScreen(),
    ),
    // GetPage(
    //   name: profile,
    //   page: () => Profilescreen(),
    // ),

    // GetPage(
    //   name: likedsongs,
    //   page: () => LikedSongscreen(),
    // ),
    // GetPage(
    //   name: languange,
    //   page: () => Languagescreen(),
    // ),
    // GetPage(
    //   name: Contactus,
    //   page: () => Contactuscreen(),
    // ),
    // GetPage(
    //   name: settings,
    //   page: () => settingscreen(),
    // ),
    // GetPage(
    //   name: faq,
    //   page: () => Faqscreen(),
    // ),
  ];

  static get index => index;
}
