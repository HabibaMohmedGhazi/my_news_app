import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_news_app/the_app_ui/the_screens/the_app_views/the_categories_view.dart';
import 'package:my_news_app/the_app_ui/the_screens/the_app_views/the_settings_view.dart';

import '../../the_app_utilizations/the_app_commons/the_app_widgets/the_custom_drawer.dart';

class TheHomeScreen extends StatefulWidget {
  static String theRoutName = 'TheHomeScreen';
  const TheHomeScreen({super.key});

  @override
  State<TheHomeScreen> createState() => _TheHomeScreenState();
}

class _TheHomeScreenState extends State<TheHomeScreen> {
  DrawerItem selectedDrawerView = DrawerItem.categories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: TheCustomDrawer(
        onSelect: (p0) {
          selectedDrawerView = p0;
          setState(() {});
        },
      ),
      appBar: AppBar(
        title: const Text('News App'),
      ),

      // to build the selected view from the drawer

      body:selectedDrawerView==DrawerItem.categories? const TheCategoriesView():const TheSettingsView(),
    );
  }
}
