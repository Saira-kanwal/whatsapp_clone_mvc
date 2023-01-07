import 'package:flutter/material.dart';
import 'package:whatsapp_mvc_clone/views/auth_view.dart';
import 'package:whatsapp_mvc_clone/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const SplashView(),
      //AuthView(),
    );
  }
}

