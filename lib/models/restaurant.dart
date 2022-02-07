import 'package:mini_project/models/food.dart';

class RestaurantFood {
  String name;
  Map<String, List<Food>> menu;
  RestaurantFood(
    this.name,
    this.menu,
  );
  static RestaurantFood generateRestaurant() {
    return RestaurantFood('Find Your \nFavorite Food', {
      'Nearest Restaurent':Food.generateNearestFoods(),
      'Popular Menu': Food.generatePopularFoods(),
    });
  }
}