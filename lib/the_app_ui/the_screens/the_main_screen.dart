import 'package:flutter/material.dart';
import 'package:my_news_app/the_app_utilizations/the_app_colors.dart';

class TheMainScreen extends StatelessWidget {
  static String theRoutName='TheMainScreen';
  const TheMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TheAppColors.thePrimaryColor
      ,
    ) ;
  }
}
