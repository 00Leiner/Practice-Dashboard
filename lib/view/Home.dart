// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gowork/others/space_between.dart';

import '../features/home/categories/categories.dart';
import '../features/home/setup/footer_setup.dart';
import '../features/home/setup/header_setup.dart';
import '../features/home/setup/my_schedule_setup.dart';
import '../others/divider_title.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(
                image: 'assets/images/image_profile.jpg',
                name: 'Leiner',
                status: 'Active',
              ),
              spaceBetween(
                h: 0.02,
              ),
              Text(
                'Dashboard',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              spaceBetween(
                h: 0.02,
              ),
              DividerTitle(
                title: 'My Schedule: ',
              ),
              spaceBetween(
                h: 0.02,
              ),
              ScheduleCalendar(),
              spaceBetween(
                h: 0.02,
              ),
              DividerTitle(
                title: 'Categories: ',
              ),
              spaceBetween(
                h: 0.02,
              ),
              Categories(),
            ],
          ),
        ),
        bottomNavigationBar: NavigatorButton(),
        floatingActionButton: TimeInTimeOutbutton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
