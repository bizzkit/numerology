import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final IconData? suffixIcon;

  const CustomTextField({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(255, 255, 255, 1), // Цвет градиента с полной непрозрачностью
            Color.fromRGBO(255, 255, 255, 0.45), // Цвет градиента с неполной непрозрачностью
          ],
        ),
        borderRadius: BorderRadius.circular(10.0), // Радиус скругления границы
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent, // Прозрачный фон
          labelText: labelText,
          suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
          border: OutlineInputBorder(
            borderSide: BorderSide.none, // Устанавливаем нулевую границу
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none, // Устанавливаем нулевую границу
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none, // Устанавливаем нулевую границу
          ),
        ),
      ),
    );
  }
}