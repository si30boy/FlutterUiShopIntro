import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  final  double screenWidth;
  final double screenHeight;
  const Card3({super.key , required this.screenWidth , required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
         height: screenHeight * 0.5,
         width: screenWidth * 0.48,

         decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(64),
            bottomLeft: Radius.circular(28),
            bottomRight: Radius.circular(28),
          ),
          border: Border.all(color: Theme.of(context).colorScheme.surface ,width: 7),
          image: DecorationImage(
            image:AssetImage('assets/images/pic3.png'),fit: BoxFit.cover),
         ),
       
        
      ),
    );
  }
}