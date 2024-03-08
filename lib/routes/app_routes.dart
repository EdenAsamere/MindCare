import 'package:flutter/material.dart';
import '../presentation/homescreen_one_screen/homescreen_one_screen.dart';
import '../presentation/homescreen_two_screen/homescreen_two_screen.dart';
import '../presentation/onboarding_one_screen/onboarding_one_screen.dart';
import '../presentation/onboarding_two_screen/onboarding_two_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/sign_up_two_tab_container_screen/sign_up_two_tab_container_screen.dart';
import '../presentation/sign_up_one_screen/sign_up_one_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/book_appointment_four_screen/book_appointment_four_screen.dart';
import '../presentation/select_field_screen/select_field_screen.dart';
import '../presentation/choose_doctor_screen/choose_doctor_screen.dart';
import '../presentation/calendar_screen/calendar_screen.dart';
import '../presentation/book_appointment_three_screen/book_appointment_three_screen.dart';
import '../presentation/book_appointment_two_screen/book_appointment_two_screen.dart';
import '../presentation/book_appointment_screen/book_appointment_screen.dart';
import '../presentation/book_appointment_one_screen/book_appointment_one_screen.dart';
import '../presentation/pop_up_screen/pop_up_screen.dart';
import '../presentation/date_and_time_picker_screen/date_and_time_picker_screen.dart';
import '../presentation/search_container_screen/search_container_screen.dart';
import '../presentation/calendar_one_screen/calendar_one_screen.dart';
import '../presentation/calendar_two_screen/calendar_two_screen.dart';
import '../presentation/messesages_one_screen/messesages_one_screen.dart';
import '../presentation/messesages_two_screen/messesages_two_screen.dart';
import '../presentation/messesages_screen/messesages_screen.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homescreenOneScreen = '/homescreen_one_screen';

  static const String homescreenTwoScreen = '/homescreen_two_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signUpTwoPage = '/sign_up_two_page';

  static const String signUpTwoTabContainerScreen =
      '/sign_up_two_tab_container_screen';

  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String homeScreen = '/home_screen';

  static const String bookAppointmentFourScreen =
      '/book_appointment_four_screen';

  static const String selectFieldScreen = '/select_field_screen';

  static const String chooseDoctorScreen = '/choose_doctor_screen';

  static const String calendarScreen = '/calendar_screen';

  static const String bookAppointmentThreeScreen =
      '/book_appointment_three_screen';

  static const String bookAppointmentTwoScreen = '/book_appointment_two_screen';

  static const String bookAppointmentScreen = '/book_appointment_screen';

  static const String bookAppointmentOneScreen = '/book_appointment_one_screen';

  static const String popUpScreen = '/pop_up_screen';

  static const String dateAndTimePickerScreen = '/date_and_time_picker_screen';

  static const String searchContainerScreen = '/search_container_screen';

  static const String searchPage = '/search_page';

  static const String calendarOneScreen = '/calendar_one_screen';

  static const String calendarTwoScreen = '/calendar_two_screen';

  static const String messesagesOneScreen = '/messesages_one_screen';

  static const String messesagesTwoScreen = '/messesages_two_screen';

  static const String messesagesScreen = '/messesages_screen';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homescreenOneScreen: (context) => HomescreenOneScreen(),
    homescreenTwoScreen: (context) => HomescreenTwoScreen(),
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    signUpTwoTabContainerScreen: (context) => SignUpTwoTabContainerScreen(),
    signUpOneScreen: (context) => SignUpOneScreen(),
    homeScreen: (context) => HomeScreen(),
    bookAppointmentFourScreen: (context) => BookAppointmentFourScreen(),
    selectFieldScreen: (context) => SelectFieldScreen(),
    chooseDoctorScreen: (context) => ChooseDoctorScreen(),
    calendarScreen: (context) => CalendarScreen(),
    bookAppointmentThreeScreen: (context) => BookAppointmentThreeScreen(),
    bookAppointmentTwoScreen: (context) => BookAppointmentTwoScreen(),
    bookAppointmentScreen: (context) => BookAppointmentScreen(),
    bookAppointmentOneScreen: (context) => BookAppointmentOneScreen(),
    popUpScreen: (context) => PopUpScreen(),
    dateAndTimePickerScreen: (context) => DateAndTimePickerScreen(),
    searchContainerScreen: (context) => SearchContainerScreen(),
    calendarOneScreen: (context) => CalendarOneScreen(),
    calendarTwoScreen: (context) => CalendarTwoScreen(),
    messesagesOneScreen: (context) => MessesagesOneScreen(),
    messesagesTwoScreen: (context) => MessesagesTwoScreen(),
    messesagesScreen: (context) => MessesagesScreen(),
    profileScreen: (context) => ProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
