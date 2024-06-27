import 'package:flutter/material.dart';

import 'package:sushiapp/components/custom_button.dart';
import 'package:sushiapp/themes/colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodybg,
      body: Padding(
        padding:const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text('SUSHIMAN',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            Padding(
                padding: const EdgeInsets.all(50),
                child: Image.asset('assets/images/ramen.png')),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
           const Flexible(
                child: Text(
              'TASTE OF JAPANESE FOOD',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            )),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const Flexible(
                child: Text(
              'Feel The Taste Of The Japanese Food From Anywhere And Anytime.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            CustomButton(
              text: 'Get Started',
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
