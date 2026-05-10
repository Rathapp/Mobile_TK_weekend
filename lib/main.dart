import 'package:flutter/material.dart';
import 'package:fluuter_weekend/Log_in.dart';

import 'package:fluuter_weekend/home_page.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn()
      // HomePage(),
    );
  }
}
