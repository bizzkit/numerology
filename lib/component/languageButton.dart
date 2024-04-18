import 'package:flutter/material.dart';

class LanguageButton extends StatefulWidget {
  final String buttonText;

  LanguageButton({required this.buttonText});

  @override
  _LanguageButtonState createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 166,
      height: 158,
      child: Material(
        elevation: _isSelected ? 0 : 20,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: () {
            setState(() {
              _isSelected = !_isSelected;
            });
          },
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: _isSelected
                  ? []
                  : [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
            ),
            child: Center(
              child: Text(
                widget.buttonText,
                style: TextStyle(
                  color: Colors.black, // Цвет текста кнопки
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}