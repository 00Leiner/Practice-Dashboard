// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../dashboard/categories.dart';
import '../dashboard/divider_title.dart';
import '../dashboard/header.dart';
import '../dashboard/my_schedule.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(
                image: 'assets/images/image_profile.jpg',
                name: 'Leiner',
                status: 'Active',
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Dashboard',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              DividerTitle(
                title: 'My Schedule: ',
              ),
              SizedBox(
                height: 10,
              ),
              ScheduleCalendar(),
              SizedBox(
                height: 15,
              ),
              DividerTitle(
                title: 'Categories: ',
              ),
              SizedBox(
                height: 10,
              ),
              Categories(),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Colors.white, spreadRadius: 7)
          ]
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.access_alarm),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.grey[600],
              ),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.library_books,
              ),
              label: 'Activities',
            )
          ]),
    );
  }
}
