import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushiapp/components/custom_button.dart';
import 'package:sushiapp/models/food.dart';
import 'package:sushiapp/models/shop.dart';
import 'package:sushiapp/themes/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removefromcart(Food food, BuildContext context) {
    // ignore: non_constant_identifier_names
    final Shop = context.read<shop>();
    Shop.removefromcart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: bodybg,
        appBar: AppBar(
          backgroundColor: bodybg,
          centerTitle: true,
          elevation: 0,
          title: const Text(
            " MyCart",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/menupage');
            },
            child: const Icon(Icons.arrow_back_ios, color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    final food = value.cart[index];
                    final String foodname = food.name;
                    final String foodprice = food.price;
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: buttonbg,
                      ),
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      padding: const EdgeInsets.all(5),
                      child: ListTile(
                        title: Text(
                          foodname,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        subtitle: Text(
                          '\$' + foodprice,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              removefromcart(food, context);
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.white,
                            )),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: CustomButton(text: 'Pay Now', onTap: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
