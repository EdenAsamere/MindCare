import 'package:flutter/material.dart';
import 'package:mindcare_plus/presentation/calendar_two_screen/calendar_two_screen.dart';
import 'package:mindcare_plus/presentation/home_screen/home_screen.dart';
import 'package:mindcare_plus/presentation/messesages_one_screen/messesages_one_screen.dart';
import 'package:mindcare_plus/presentation/messesages_two_screen/messesages_two_screen.dart';
import 'package:mindcare_plus/presentation/profile_screen/profile_screen.dart';
import 'package:mindcare_plus/widgets/custom_bottom_bar.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int pageIndex = 0;
  final pages = [
    HomeScreen(),
    CalendarTwoScreen(),
    MessesagesOneScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: CustomBottomBar(
        onChanged: (val) {
          setState(() {
            pageIndex = val;
          });
        },
      ),
    );
  }
}
