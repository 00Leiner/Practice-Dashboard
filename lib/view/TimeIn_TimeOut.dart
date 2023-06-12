import 'package:flutter/material.dart';

class TimeInTimeOut extends StatefulWidget {
  const TimeInTimeOut({super.key});

  @override
  State<TimeInTimeOut> createState() => _TimeInTimeOutState();
}

class _TimeInTimeOutState extends State<TimeInTimeOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.blueGrey[600],
                  borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.fullscreen_rounded,
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.blueGrey[600],
                  borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.location_history_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              
            )


          ],
        ),
      ),
    );
  }
}
