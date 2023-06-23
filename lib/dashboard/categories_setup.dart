// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoriesSetUp extends StatefulWidget {
  final String txt;
  final icon;
  final color;

  const CategoriesSetUp({
    Key? key,
    required this.txt,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  State<CategoriesSetUp> createState() => _CategoriesSetUpState();
}

class _CategoriesSetUpState extends State<CategoriesSetUp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200],
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: widget.color,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        widget.icon,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    widget.txt,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_sharp,
              )
            ],
          ),
        ),
      ),
    );
  }
}
