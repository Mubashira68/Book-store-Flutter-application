import 'package:book_store_app/pages/HomePage/MainTabView.dart';
import 'package:book_store_app/pages/OnBording_screens.dart';
import 'package:book_store_app/pages/Signup_page.dart';
import 'package:book_store_app/pages/Welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainTabView(),
    );
  }
}