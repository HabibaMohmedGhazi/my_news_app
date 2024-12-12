import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_news_app/the_app_models/the_category_model.dart';
import 'package:my_news_app/the_app_utilizations/the_app_commons/the_app_widgets/the_categories_card.dart';
import 'package:my_news_app/the_app_utilizations/the_app_commons/the_app_widgets/the_custom_drawer.dart';
import 'package:my_news_app/the_app_utilizations/the_assets.dart';

class TheCategoriesView extends StatelessWidget {
  const TheCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    List<TheCategoryModel> theCategoryList = [
      TheCategoryModel(
          imagePath: TheAssets.theBall, title: 'Sport', color: Colors.red),
      TheCategoryModel(
          imagePath: TheAssets.theBussines,
          title: 'Business',
          color: Colors.blue),
      TheCategoryModel(
          imagePath: TheAssets.theEnvironment,
          title: 'Environment',
          color: Colors.pink),
      TheCategoryModel(
          imagePath: TheAssets.theHealth,
          title: 'Health',
          color: Colors.orange),
      TheCategoryModel(
          imagePath: TheAssets.thePolitics,
          title: 'Politics',
          color: Colors.lightBlueAccent),
      TheCategoryModel(
          imagePath: TheAssets.theScience,
          title: 'Science',
          color: Colors.yellow)
    ];
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(TheAssets.thePattern), fit: BoxFit.fill),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 35.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pick your category\nof interest',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Expanded(
              // you must put expanded to avoid getting error
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 25.w,
                    crossAxisSpacing: 20.h,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => TheCategoriesCard(
                  categoryModel: theCategoryList[index],
                  index: index,
                ),
                itemCount: 6,
              ),
            )
          ],
        ),
      ),
    );
  }
}
