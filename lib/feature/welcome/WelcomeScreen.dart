import 'package:flutter/material.dart';
import 'package:flutter_application_4/feature/product/ProductScreen.dart';
import 'package:flutter_application_4/feature/welcome/widget/Card1.dart';
import 'package:flutter_application_4/feature/welcome/widget/Card2.dart';
import 'package:flutter_application_4/feature/welcome/widget/Card3.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(
      context,
    ).size.height; //برای گرفتن اندازه ارتفاع برنامه
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: screenHeight,
          child: Stack(
            children: [
              BackWidget(screenHeight: screenHeight, screenWidth: screenWidth),
              FrontWidget(screenWidth: screenWidth),
            ],
          ),
        ),
      ),
    );
  }
}

class FrontWidget extends StatelessWidget {
  final double screenWidth;
  const FrontWidget({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,

      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            stops: [0.9, 1.0],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Theme.of(context).colorScheme.surface,
              // ignore: deprecated_member_use
              Theme.of(context).colorScheme.surface.withOpacity(0),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 28),
            Text(
              'Welcome To Kids Style! ',
              style: GoogleFonts.exo2(fontSize: 22, color: Colors.black54),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 32),
              child: Text(
                'Get ready to dress your little ones in fashion forward outfits.',
                style: GoogleFonts.exo2(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductScreen()),
                );
              },
              child: Text(
                'Get started ',
                style: GoogleFonts.exo2(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have account?',
                  style: GoogleFonts.exo2(fontSize: 16, color: Colors.black54),
                ),
                SizedBox(width: 12),
                TextButton(
                  style: ButtonStyle(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: GoogleFonts.exo2(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BackWidget extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  const BackWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.8,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card1(screenHeight: screenHeight, screenWidth: screenWidth),
              Card2(screenWidth: screenWidth),
            ],
          ),
          Positioned(
            right: 0,
            bottom: 50,
            child: Card3(screenWidth: screenWidth, screenHeight: screenHeight),
          ),
        ],
      ),
    );
  }
}
