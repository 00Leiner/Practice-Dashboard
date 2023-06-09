import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(   
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 72, 97, 2)),
        useMaterial3: true,
      ),),);
}
