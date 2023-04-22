import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String ButtonText;
  final ButtonColor;
  final ButtonTextColor;

  MyButton({
    super.key, required this.onTap, 
    required this.ButtonText, 
    required this.ButtonColor, 
    required this.ButtonTextColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: ButtonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            StrokeText(
                text: ButtonText,
                textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: ButtonTextColor,
              ),
              strokeColor: Color.fromARGB(255, 248, 248, 248),
              strokeWidth: 0,
            ),
          ],
        ),
      ),
    );
  }
}
