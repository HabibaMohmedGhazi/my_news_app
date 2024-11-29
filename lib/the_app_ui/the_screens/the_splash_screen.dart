import 'package:flutter/material.dart';
import 'package:my_news_app/the_app_ui/the_screens/the_main_screen.dart';

class TheSplashScreen extends StatelessWidget {
  static String theRoutName = '/'; // The initial route
  const TheSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 2),
            (){
        Navigator.pushReplacementNamed(context, TheMainScreen.theRoutName);

        }
    );
    return Scaffold(
      body: Image.asset('lib/the_app_assets/the_images/the_splash_screen.png'),
    );
  }
}
