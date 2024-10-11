import 'package:flutter/material.dart';
import 'package:islami/core/assets_manager.dart';
import 'package:islami/core/routes_manager.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 5),
        (){
          Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
        }
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 20,),
            Image(image: AssetImage(AssetsManager.splashImage)),
            Image(image: AssetImage(AssetsManager.routeLogo)),

          ],
        ),
      ),
    );
  }
}
