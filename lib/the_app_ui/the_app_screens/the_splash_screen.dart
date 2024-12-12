import 'package:flutter/material.dart';
import 'package:my_news_app/the_app_ui/the_screens/the_app_views/the_categories_view.dart';
import 'package:my_news_app/the_app_ui/the_screens/the_home_screen.dart';
import 'package:my_news_app/the_app_utilizations/the_assets.dart';

class TheSplashScreen extends StatelessWidget {
  static String theRoutName = '/'; // The initial route
  const TheSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, TheHomeScreen.theRoutName);
    });
    return Scaffold(
      body: Image.asset(TheAssets.theSplashScreen),
    );
  }
}
