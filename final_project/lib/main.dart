import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'aftersplash.dart';

void main() {
  runApp(MaterialApp(
      home: const MyApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue)));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/splash.jpg'),
      title: const Text(
        'Jonathan Crivaro\n\n\n\nRU Dino Park App\n\n\n\n22 April, 2024',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      backgroundColor: const Color(0xFFFFCC00),
      showLoader: true,
      loaderColor: const Color(0xFF57150B),
      loadingText: const Text('Starting RU Fossil Park'),
      navigator: const AfterSplash(),
      durationInSeconds: 5,
    );
  }
}
