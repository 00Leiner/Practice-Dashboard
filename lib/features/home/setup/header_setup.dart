// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../others/space_between.dart';

class Header extends StatelessWidget {
  final String image;
  final String name;
  final String status;

  const Header({
    super.key,
    required this.image,
    required this.name,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            //profile
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            spaceBetween(
              w: 0.02,
            ),
            //name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Hi, ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                spaceBetween(
                  h: 0.005,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 10,
                    ),
                    spaceBetween(
                      w: 0.01,
                    ),
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        //settings
        Icon(
          Icons.settings,
          size: 30,
        ),
      ],
    );
  }
}
