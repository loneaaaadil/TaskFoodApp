import 'package:flutter/material.dart';
import 'package:mini_project/models/restaurant.dart';

class RestaurantInfo extends StatelessWidget {
  final restaurant = RestaurantFood.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.notifications_on,
                      color: Colors.green,
                      size: 40,
                    ),
                  ],
                )
              ],
            ),
           
          ],
        ));
  }
}
