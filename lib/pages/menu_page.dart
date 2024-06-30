import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushiapp/components/custom_button.dart';
import 'package:sushiapp/components/favfood_tile.dart';
import 'package:sushiapp/components/food_tile.dart';
import 'package:sushiapp/models/favfood.dart';
import 'package:sushiapp/models/shop.dart';
import 'package:sushiapp/pages/food_details.dart';
import 'package:sushiapp/themes/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // ignore: non_constant_identifier_names
  List<FavFood> favFoodMenu = [
    FavFood(
      name: 'Sushi-rice',
      imagepath: 'assets/images/sushirice.png',
      price: '120',
    ),
    FavFood(
      name: 'Sushi-rice',
      imagepath: 'assets/images/ramen.png',
      price: '120',
    ),
    FavFood(
      name: 'Sushi-rice',
      imagepath: 'assets/images/sushi.png',
      price: '120',
    ),
  ];
// ignore: non_constant_identifier_names
// List FoodMenu = [
//   Food(name: 'Sushi-Rice',
//        price: '190',
//        imagepath: 'assets/images/sushirice.png',
//        rating: '4.2'
//        ),
//   Food(name: 'Sushi-Egg',
//        price: '190',
//        imagepath: 'assets/images/sushi_egg.png',
//        rating: '4.2'
//        ),
//        Food(name: 'Ramen',
//        price: '190',
//        imagepath: 'assets/images/ramen.png',
//        rating: '4.2'
//        ),
//        Food(name: 'Rice',
//        price: '190',
//        imagepath: 'assets/images/sushi.png',
//        rating: '4.2'
//        )

// ];

  void navigatetoFoodDetailspage(int index) {
    final Shop = context.read<shop>();
    final FoodMenu = Shop.FoodMenu;

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FoodDetail(
            food: FoodMenu[index],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final Shop = context.read<shop>();
    final FoodMenu = Shop.FoodMenu;
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "TOKYO",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey[400],
        leading: const Icon(Icons.menu_rounded, color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/cartpage');
              },
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: bodybg,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Get 32% Promo',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 17),
                        CustomButtonsmall(text: 'REDEEM', onTap: () {})
                      ],
                    ),
                    Image.asset(
                      'assets/images/food.png',
                      height: 100,
                      width: 100,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search here...',
                hintStyle: const TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Food Menu',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: FoodMenu.length,
                    itemBuilder: (context, index) => FoodTile(
                          onTap: () => navigatetoFoodDetailspage(index),
                          food: FoodMenu[index],
                        ))),
            const SizedBox(
              height: 20,
            ),
            Flexible(
                child: ListView.builder(
                    itemCount: favFoodMenu.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => FavFoodTile(
                          favfood: favFoodMenu[index],
                        ))),
          ],
        ),
      ),
    );
  }
}
