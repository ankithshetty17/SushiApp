import 'package:flutter/material.dart';
import 'package:sushiapp/themes/colors.dart';

class CustomButton extends  StatelessWidget {
  final String text;
  final void Function()? onTap;
  const CustomButton({super.key,
  required this.text,
  required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:
    Center(child:
    Container(
      height: 60,
      decoration: BoxDecoration(
        color: buttonbg,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          const Icon(Icons.arrow_forward,color: Colors.white,),
        ],
      ),
    ),
    ),
    );
  }
}