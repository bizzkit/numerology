import 'package:flutter/material.dart';

class BackgroundComponent extends StatelessWidget {
  final Widget child;

  BackgroundComponent({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF61277C),
            Color(0xFF362081),
          ],
          stops: [0.0, 0.9947],
        ),
      ),
      child: child,
    );
  }
}