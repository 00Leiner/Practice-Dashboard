import 'package:flutter/material.dart';

class DividerTitle extends StatelessWidget {
  final String title;
  const DividerTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
        ),
        Expanded(
            child: Container(
          height: 1,
          width: double.infinity,
          color: Colors.grey[300],
        ))
      ],
    );
  }
}
