import 'package:catloaf/pages/home_page.dart';
import 'package:catloaf/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import './palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor: const Color(0XFFFB7D81),
        primarySwatch: Palette.catloaf,
      ).copyWith(dividerColor: Colors.transparent),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
