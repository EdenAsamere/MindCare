import 'package:flutter/material.dart';
import 'package:mindcare_plus/presentation/home_layout/home_layout.dart';
import '../presentation/homescreen_two_screen/homescreen_two_screen.dart';
import '../presentation/onboarding_two_screen/onboarding_two_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/sign_up_two_tab_container_screen/sign_up_two_tab_container_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/choose_doctor_screen/choose_doctor_screen.dart';
import '../presentation/calendar_screen/calendar_screen.dart';
import '../presentation/book_appointment_one_screen/book_appointment_one_screen.dart';
import '../presentation/calendar_two_screen/calendar_two_screen.dart';
import '../presentation/messesages_one_screen/messesages_one_screen.dart';
import '../presentation/messesages_two_screen/messesages_two_screen.dart';
import '../presentation/profile_screen/profile_screen.dart';

class AppRoutes {
  static const String homeLayout = '/home';

  static const String homescreenTwoScreen = '/homescreen_two_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signUpTwoPage = '/sign_up_two_page';

  static const String signUpTwoTabContainerScreen =
      '/sign_up_two_tab_container_screen';

  static const String homeScreen = '/home_screen';

  static const String chooseDoctorScreen = '/choose_doctor_screen';

  static const String calendarScreen = '/calendar_screen';

  static const String bookAppointmentOneScreen = '/book_appointment_one_screen';

  static const String searchPage = '/search_page';

  static const String calendarTwoScreen = '/calendar_two_screen';

  static const String messesagesOneScreen = '/messesages_one_screen';

  static const String messesagesTwoScreen = '/messesages_two_screen';

  static const String profileScreen = '/profile_screen';

  static Map<String, WidgetBuilder> routes = {
    homeLayout: (context) => HomeLayout(),
    homescreenTwoScreen: (context) => HomescreenTwoScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    signUpTwoTabContainerScreen: (context) => SignUpTwoTabContainerScreen(),
    homeScreen: (context) => HomeScreen(),
    chooseDoctorScreen: (context) => ChooseDoctorScreen(),
    calendarScreen: (context) => CalendarScreen(),
    bookAppointmentOneScreen: (context) => BookAppointmentOneScreen(),
    calendarTwoScreen: (context) => CalendarTwoScreen(),
    messesagesOneScreen: (context) => MessesagesOneScreen(),
    messesagesTwoScreen: (context) => MessesagesTwoScreen(),
    profileScreen: (context) => ProfileScreen(),
  };
}
