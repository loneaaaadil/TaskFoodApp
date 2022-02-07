class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highlight;
  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.highlight = false});

  static List<Food> generateNearestFoods() {
    return [
      Food(
          'assets/images/ResturantImage.png',
          '12 min',
          'Vegan Resto',
          '12 min',
          4.8,
          '325 Kcal',
          1,
          1,
          [
            {
              'Noodles': 'assets/images/restaurantImage.png',
            },
            {
              'Shrimp ': 'assets/images/ResturantImage.png',
            },
            {
              'Scallion': 'assets/images/restaurantImage.png',
            },
          ],
          'Simply put,ramen is a japanese noodles soup',
          highlight: true),
      Food(
          'assets/images/healthy.png',
          '8 min',
          'Healthy Food',
          '8 min',
          4.8,
          '325 Kcal',
          2,
          2,
          [
            {
              'Noodles': 'assets/images/restaurantImage.png',
            },
            {
              'Shrimp ': 'assets/images/ResturantImage.png',
            },
            {
              'Scallion': 'assets/images/restaurantImage.png',
            },
          ],
          'Simply put,ramen is a japanese noodles soup',
          highlight: true),
      Food(
          'assets/images/restaurantImage.png',
          '20 min',
          'Good Food',
          '',
          4.8,
          '325 Kcal',
          3,
          3,
          [
            {
              'Noodles': 'assets/images/restaurantImage.png',
            },
            {
              'Shrimp ': 'assets/images/ResturantImage.png',
            },
            {
              'Scallion': 'assets/images/restaurantImage.png',
            },
          ],
          'Simply put,ramen is a japanese noodles soup',
          highlight: true),
      Food(
          'assets/images/RestaurantImage22.png',
          '10 min',
          'Smart Resto',
          '50 min',
          4.8,
          '325 Kcal',
          4,
          5,
          [
            {
              'Noodles': 'assets/images/restaurantImage.png',
            },
            {
              'Shrimp ': 'assets/images/ResturantImage.png',
            },
            {
              'Scallion': 'assets/images/restaurantImage.png',
            },
          ],
          'Simply put,ramen is a japanese noodles soup',
          highlight: true),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          'assets/images/PhotoMenu1.png',
          'Noddle Home',
          'Green Noddle',
          '50 min',
          4.8,
          '325 Kcal',
          15,
          1,
          [
            {
              'Noodles': 'assets/images/restaurantImage.png',
            },
            {
              'Shrimp ': 'assets/images/ResturantImage.png',
            },
            {
              'Scallion': 'assets/images/restaurantImage.png',
            },
          ],
          'Simply put,ramen is a japanese noodles soup',
          highlight: true),
      Food(
          'assets/images/photoMenu.png',
          'Wijie Resto',
          'Fruit Salad',
          '50 min',
          4.8,
          '325 Kcal',
          5,
          1,
          [
            {
              'Noodles': 'assets/images/restaurantImage.png',
            },
            {
              'Shrimp ': 'assets/images/ResturantImage.png',
            },
            {
              'Scallion': 'assets/images/restaurantImage.png',
            },
          ],
          'Simply put,ramen is a japanese noodles soup',
          highlight: true),
      Food(
          'assets/images/menuPhoto.png',
          'Warung Herbal',
          'Herbal Pancake',
          '50 min',
          4.8,
          '325 Kcal',
          7,
          1,
          [
            {
              'Noodles': 'assets/images/restaurantImage.png',
            },
            {
              'Shrimp ': 'assets/images/ResturantImage.png',
            },
            {
              'Scallion': 'assets/images/restaurantImage.png',
            },
          ],
          'Simply put,ramen is a japanese noodles soup',
          highlight: true),
      Food(
          'assets/images/photoMenu.png',
          'No1. in Sales',
          'Soba Soup',
          '50 min',
          4.8,
          '325 Kcal',
          18,
          1,
          [
            {
              'Noodles': 'assets/images/restaurantImage.png',
            },
            {
              'Shrimp ': 'assets/images/ResturantImage.png',
            },
            {
              'Scallion': 'assets/images/restaurantImage.png',
            },
          ],
          'Simply put,ramen is a japanese noodles soup',
          highlight: true),
    ];
  }
}
