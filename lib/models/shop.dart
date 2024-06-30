import 'package:flutter/material.dart';
import 'package:sushiapp/models/food.dart';

class shop extends ChangeNotifier {
  //food menu
  final List<Food> _FoodMenu = [
    Food(
        name: 'Sushi-Rice',
        price: '190',
        imagepath: 'assets/images/sushirice.png',
        rating: '4.2'),
    Food(
        name: 'Sushi-Egg',
        price: '190',
        imagepath: 'assets/images/sushi_egg.png',
        rating: '4.2'),
    Food(
        name: 'Ramen',
        price: '190',
        imagepath: 'assets/images/ramen.png',
        rating: '4.2'),
    Food(
        name: 'Rice',
        price: '190',
        imagepath: 'assets/images/sushi.png',
        rating: '4.2')
  ];

  //customer cart
  List<Food> _cart = [];

  //getter methods
  List<Food> get FoodMenu => _FoodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addtocart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  //remove from cart
  void removefromcart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
