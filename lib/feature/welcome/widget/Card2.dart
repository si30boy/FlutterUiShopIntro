import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  final  double screenWidth;
  const Card2({super.key , required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
         height: 340,
        width: screenWidth * 0.499,
       
        child: ClipRRect(borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          bottomLeft: Radius.circular(28),
          bottomRight: Radius.circular(28),
        ),child: Image.asset('assets/images/pic2.png',
        fit: BoxFit.cover,)),
      ),
    );
  }
}