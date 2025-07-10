import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 extends StatelessWidget {
  final double screenHeight;// گرفتن اطلاعات اندازه ارتفاع گوشی کاربر
  final double screenWidth;
  const Card1({super.key , required this.screenHeight , required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screenHeight * 0.35,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.brown.shade700,
              Colors.brown.shade200

            ]
          ),
          borderRadius: BorderRadius.circular(28)),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                height: screenHeight * 0.24,
                child: Image.asset('assets/images/pic1.png')
                
                ),
                
              Positioned(
                top: 8,
                right: 8,
                child: SizedBox(
                  width: screenWidth * 0.55,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    

                    Text('All Kids Fashion', style: GoogleFonts.exo2(
                      fontSize: 24 ,fontWeight: FontWeight.bold),),
                  
                    SizedBox(
                      height: 6,
                    ),
                  
                      Text('Designed to spark joy and creativity in every child. With a focus on comfort and the quality.', style: GoogleFonts.exo2(
                      fontSize: 15 ,
                      color: Colors.black54),)
                  ],
                  
                  
                  ),
                ))

            ],
          ),


      ),
    );
  }
}