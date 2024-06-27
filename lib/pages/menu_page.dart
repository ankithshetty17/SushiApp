import 'package:flutter/material.dart';
import 'package:sushiapp/components/custom_button.dart';
import 'package:sushiapp/themes/colors.dart';

class MenuPage  extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("TOKYO",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.grey[400],
        leading: 
         const Icon(Icons.menu_rounded,color: Colors.black),
         actions: const [
          Padding(padding: EdgeInsets.only(right: 10),
          child:
          Icon(Icons.shopping_cart_outlined,color: Colors.black,)
          ),
         ],
      ),
      body:  Padding(padding:const  EdgeInsets.all(20),
          child:
      Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Container(
            decoration:BoxDecoration(
              color: bodybg,
              borderRadius: BorderRadius.circular(20),
            ),
            
            child:Padding(padding:const EdgeInsets.all(25),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  const Text('Get 32% Promo',style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  const  SizedBox(height: 17),
                    CustomButtonsmall(text:'REDEEM', onTap:(){})
                  ],
                ),
                Image.asset('assets/images/food.png',height: 100,width: 100,)
              ],
            ),
            ),
          ),
        const   SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
              hintText: 'Search here...',
              hintStyle: const TextStyle(color: Colors.grey),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:const BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:const  BorderSide(color: Colors.white),
              ),
            ),
          ),
         const  SizedBox(height: 20,),
          const Text('Food Menu',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),)
        ],
      ),
      )
    );
  }
}