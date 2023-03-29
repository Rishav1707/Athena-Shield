import 'package:women_app/presentation/login_page_screen/login_page_screen.dart';
import 'package:women_app/presentation/login_page_screen/binding/login_page_binding.dart';
import 'package:women_app/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:women_app/presentation/profile_page_screen/binding/profile_page_binding.dart';
import 'package:women_app/presentation/help_screen/help_screen.dart';
import 'package:women_app/presentation/help_screen/binding/help_binding.dart';
import 'package:women_app/presentation/home_page_screen/home_page_screen.dart';
import 'package:women_app/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:women_app/presentation/home_page_one_screen/home_page_one_screen.dart';
import 'package:women_app/presentation/home_page_one_screen/binding/home_page_one_binding.dart';
import 'package:women_app/presentation/sos_screen_two_screen/sos_screen_two_screen.dart';
import 'package:women_app/presentation/sos_screen_two_screen/binding/sos_screen_two_binding.dart';
import 'package:women_app/presentation/sos_screen_one_screen/sos_screen_one_screen.dart';
import 'package:women_app/presentation/sos_screen_one_screen/binding/sos_screen_one_binding.dart';
import 'package:women_app/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:women_app/presentation/sign_up_page_screen/binding/sign_up_page_binding.dart';
import 'package:women_app/presentation/sos_screen/sos_screen.dart';
import 'package:women_app/presentation/sos_screen/binding/sos_binding.dart';
import 'package:women_app/presentation/location_screen/location_screen.dart';
import 'package:women_app/presentation/location_screen/binding/location_binding.dart';
import 'package:women_app/presentation/voice_note_screen/voice_note_screen.dart';
import 'package:women_app/presentation/voice_note_screen/binding/voice_note_binding.dart';
import 'package:women_app/presentation/tips_screen/tips_screen.dart';
import 'package:women_app/presentation/tips_screen/binding/tips_binding.dart';
import 'package:women_app/presentation/contacts_page_one_screen/contacts_page_one_screen.dart';
import 'package:women_app/presentation/contacts_page_one_screen/binding/contacts_page_one_binding.dart';
import 'package:women_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:women_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginPageScreen = '/login_page_screen';

  static const String profilePageScreen = '/profile_page_screen';

  static const String helpScreen = '/help_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String homePageOneScreen = '/home_page_one_screen';

  static const String sosScreenTwoScreen = '/sos_screen_two_screen';

  static const String sosScreenOneScreen = '/sos_screen_one_screen';

  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String sosScreen = '/sos_screen';

  static const String locationScreen = '/location_screen';

  static const String voiceNoteScreen = '/voice_note_screen';

  static const String tipsScreen = '/tips_screen';

  static const String contactsPageOneScreen = '/contacts_page_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginPageScreen,
      page: () => LoginPageScreen(),
      bindings: [
        LoginPageBinding(),
      ],
    ),
    GetPage(
      name: profilePageScreen,
      page: () => ProfilePageScreen(),
      bindings: [
        ProfilePageBinding(),
      ],
    ),
    GetPage(
      name: helpScreen,
      page: () => HelpScreen(),
      bindings: [
        HelpBinding(),
      ],
    ),
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: homePageOneScreen,
      page: () => HomePageOneScreen(),
      bindings: [
        HomePageOneBinding(),
      ],
    ),
    GetPage(
      name: sosScreenTwoScreen,
      page: () => SosScreenTwoScreen(),
      bindings: [
        SosScreenTwoBinding(),
      ],
    ),
    GetPage(
      name: sosScreenOneScreen,
      page: () => SosScreenOneScreen(),
      bindings: [
        SosScreenOneBinding(),
      ],
    ),
    GetPage(
      name: signUpPageScreen,
      page: () => SignUpPageScreen(),
      bindings: [
        SignUpPageBinding(),
      ],
    ),
    GetPage(
      name: sosScreen,
      page: () => SosScreen(),
      bindings: [
        SosBinding(),
      ],
    ),
    GetPage(
      name: locationScreen,
      page: () => LocationScreen(),
      bindings: [
        LocationBinding(),
      ],
    ),
    GetPage(
      name: voiceNoteScreen,
      page: () => VoiceNoteScreen(),
      bindings: [
        VoiceNoteBinding(),
      ],
    ),
    GetPage(
      name: tipsScreen,
      page: () => TipsScreen(),
      bindings: [
        TipsBinding(),
      ],
    ),
    GetPage(
      name: contactsPageOneScreen,
      page: () => ContactsPageOneScreen(),
      bindings: [
        ContactsPageOneBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginPageScreen(),
      bindings: [
        LoginPageBinding(),
      ],
    )
  ];
}
