import 'package:flutter/material.dart';
import 'package:sushiapp/models/favfood.dart';

class FavFoodTile extends StatelessWidget {
  final FavFood favfood; 
  const FavFoodTile({super.key,required this.favfood});

  @override
  Widget build(BuildContext context) {
    return   Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(vertical: 10),
           padding: const EdgeInsets.all(15),
         child: 
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      favfood.imagepath,
                      height: 60,),
                  const   SizedBox(width: 20,),
                   const  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                           'favfood.name',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10,),
                        Text( 
                          'favfood.price',
                        style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                  ],
                ),
               const  Icon(Icons.favorite_border,color: Colors.grey,size: 25,)
               
              ],
         ),
      );
  }
}