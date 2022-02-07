// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/models/restaurant.dart';
import 'package:mini_project/screens/home/widget/food_list.dart';
import 'package:mini_project/screens/home/widget/food_list_view.dart';
import 'package:mini_project/screens/home/widget/image_widget.dart';
import 'package:mini_project/screens/home/widget/restaurant_info.dart';
import 'package:mini_project/widgets/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = RestaurantFood.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.search_outlined,
          ),
          RestaurantInfo(),
          ImageViewer(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, restaurant),
          Expanded(
            child: FoodListView(
              selected,
              (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController,
              restaurant,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            // height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                    width: 8,
                    height: 8,
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  activeDotDecoration: DotDecoration(
                    width: 10,
                    height: 10,
                    color: kBackground,
                    borderRadius: BorderRadius.circular(10),
                    dotBorder: DotBorder(
                      color: kPrimaryColor,
                      padding: 2,
                      width: 2,
                    ),
                  )),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          )
        ],
      ),
      
    );
  }
}
