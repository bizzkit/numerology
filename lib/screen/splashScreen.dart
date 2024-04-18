import 'package:flutter/material.dart';
import 'package:my_pet_project/component/backgroundComponent.dart';

import 'dart:async';

import 'package:my_pet_project/screen/languageScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LanguageSelectionPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? _buildLoadingScreen() // Показываем изображение загрузки
          : BackgroundComponent(
              // После загрузки, показываем фон как компонент
              child: Center(
                child: Text(
                  "WELCOME",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
    );
  }

  Widget _buildLoadingScreen() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/background.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}