import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final String titleText;
  final String description;
  final String? extraText;
  const CustomRichText({
    super.key,
    required this.titleText,
    required this.description,
    this.extraText,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: titleText,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
          fontSize: 10,
        ),
        children: [
          TextSpan(text: description, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
          TextSpan(text: extraText, style: const TextStyle(fontSize: 10, color: Colors.white)),
        ],
      ),
    );
  }
}
