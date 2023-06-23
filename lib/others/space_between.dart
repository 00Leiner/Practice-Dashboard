import 'package:flutter/material.dart';

class spaceBetween extends StatelessWidget {
  final double? h;
  final double? w;
  
  const spaceBetween({super.key, this.h, this.w});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final heightSize = h != null ? screenHeight * h! : null;
    final widthSize = w != null ? screenWidth * w! : null;

    return SizedBox(
        height: heightSize,
        width: widthSize,
    );
  }
}