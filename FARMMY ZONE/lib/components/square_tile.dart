import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.8),
      ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
