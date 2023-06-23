import 'package:flutter/material.dart';

import 'categories_setup.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CategoriesSetUp(
                          txt: 'Leave Request',
                          color: Colors.yellow[200],
                          icon: Icons.person_off,
                        ),
                        CategoriesSetUp(
                          txt: 'My Document',
                          color: Colors.green[200],
                          icon: Icons.topic,
                        ),
                        CategoriesSetUp(
                          txt: 'Attendance',
                          color: Colors.orange[200],
                          icon: Icons.list_alt,
                        ),
                        CategoriesSetUp(
                          txt: 'other',
                          color: Colors.blue[200],
                          icon: Icons.topic,
                        ),
                        CategoriesSetUp(
                          txt: 'other',
                          color: Colors.blue[200],
                          icon: Icons.topic,
                        ),
                        CategoriesSetUp(
                          txt: 'other',
                          color: Colors.blue[200],
                          icon: Icons.topic,
                        ),
                      ],
                    ),
                  ),
                ),
              );
  }
}