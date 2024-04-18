import 'package:flutter/material.dart';
import 'package:my_pet_project/screen/languageScreen.dart';
import 'package:my_pet_project/screen/splashScreen.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Colors.transparent, // делаем фон прозрачным
      ),
      initialRoute: '/', // Устанавливаем начальный маршрут
      routes: {
        '/': (context) => SplashScreen(), // Устанавливаем SplashScreen как начальный экран
        '/language_selection': (context) => LanguageSelectionPage(), // Добавляем LanguageSelectionPage
      },
    );
  }
}