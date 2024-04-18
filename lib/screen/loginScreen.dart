import 'package:flutter/material.dart';
import 'package:my_pet_project/component/customButton.dart';
import 'package:my_pet_project/component/customtextField.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.3),
                border: Border(
                  top: BorderSide(
                    color:
                        Colors.white.withOpacity(0), // Цвет верхней границы
                    width: 1.0, // Ширина верхней границы
                  ),
                ),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30.0), // Радиус скругления верхнего края
                  bottom: Radius.zero, // Без скругления нижнего края
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Войти',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      CustomTextField(
                        labelText: 'Электронная почта',
                      ),
                      SizedBox(height: 20),
                      CustomTextField(
                        labelText: 'Пароль',
                        obscureText: true,
                        suffixIcon: Icons.visibility,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Забыли пароль?',
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      CustomButton(
                        onPressed: () {},
                        buttonText: 'Войти',
                        height: 66,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Нет аккаунта? ',
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Зарегистрируйтесь',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
