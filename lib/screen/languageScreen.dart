import 'package:flutter/material.dart';
import 'package:my_pet_project/component/backgroundComponent.dart';
import 'package:my_pet_project/component/customButton.dart';
import 'package:my_pet_project/component/languageButton.dart';
import 'package:my_pet_project/screen/loginScreen.dart';

class LanguageSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundComponent(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 200,),
                    Text(
                      'Выберете язык',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LanguageButton(buttonText: "Английский"),
                        SizedBox(
                          width: 20,
                        ),
                        LanguageButton(buttonText: "Испанский"),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40), 
                child: CustomButton(
                  buttonText: "ПРОДОЛЖИТЬ",
                  height: 66,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()), // Замените LoginScreen() на ваш экран логина
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}