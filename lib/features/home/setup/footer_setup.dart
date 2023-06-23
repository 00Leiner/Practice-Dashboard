// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavigatorButton extends StatelessWidget {
  const NavigatorButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
          ),
        ]);
  }
}

class TimeInTimeOutbutton extends StatelessWidget {
  const TimeInTimeOutbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: const [BoxShadow(color: Colors.white, spreadRadius: 7)]),
      child: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.access_alarm),
      ),
    );
  }
}
