import 'package:flutter/material.dart';
import 'package:islami/config/my_theme.dart';
import 'package:islami/core/routes_manager.dart';
import 'package:islami/presentaition/screens/home_screen.dart';
import 'package:islami/presentaition/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      routes: {
        RoutesManager.splashRoute: (_)=> SpalshScreen(),
        RoutesManager.homeRoute: (_)=> HomeScreen(),

      },
      initialRoute: RoutesManager.splashRoute,
    );
  }
}
