import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/feature/product/widget/SizeWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String selectedSize = '2/3';

  void changeSelectedSize(String newSize) {
    setState(() {
      selectedSize = newSize;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            'Product Details',
            style: GoogleFonts.exo2(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          CupertinoButton(
            child: const Icon(CupertinoIcons.heart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage('assets/images/pic4.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Stylish Jeans Clothes',
                  style: GoogleFonts.exo2(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '\$120.99',
                  style: GoogleFonts.exo2(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(CupertinoIcons.star_fill, color: Colors.amber, size: 18),
                SizedBox(width: 4),
                Text(
                  '4.8',
                  style: GoogleFonts.exo2(fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 4),
                Text(
                  '(185 Reviews)',
                  style: GoogleFonts.exo2(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Description',
              style: GoogleFonts.exo2(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Stylish Jeans Clothes collection is the perfect fusion of fashion and comfort for your little fashionistas. Crafted with care and attention to detail.',
              style: GoogleFonts.exo2(color: Colors.grey.shade600),
            ),
            SizedBox(height: 16),
            Text(
              'size',
              style: GoogleFonts.exo2(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Sizewidget(
                  label: '2/3',
                  selected: selectedSize == '2/3',
                  onTap: () => changeSelectedSize('2/3'),
                ),
                Sizewidget(
                  label: '3/4',
                  selected: selectedSize == '3/4',
                  onTap: () => changeSelectedSize('3/4'),
                ),
                Sizewidget(
                  label: '4/5',
                  selected: selectedSize == '4/5',
                  onTap: () => changeSelectedSize('4/5'),
                ),
                Sizewidget(
                  label: '5/6',
                  selected: selectedSize == '5/6',
                  onTap: () => changeSelectedSize('5/6'),
                ),
                Sizewidget(
                  label: '6/7',
                  selected: selectedSize == '6/7',
                  onTap: () => changeSelectedSize('6/7'),
                ),
              ],
            ),
            Spacer(), //به اندازه ای که جا هست فاصله میندازه
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
                padding: EdgeInsets.symmetric(vertical: 12),
              ),
              child: Text(
                'Add To Bag',
                style: GoogleFonts.exo2(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
