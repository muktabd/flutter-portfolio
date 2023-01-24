import 'package:flutter/material.dart';

class Skills {
  final int? id;
  final String? title, image;
  final Color? color;

  Skills({this.id, this.title, this.image, this.color});
}

// For demo list of service
List<Skills> skills = [
  Skills(
    id: 1,
    title: "Native Android",
    image: "assets/images/graphic.png",
    color: const Color(0xFFD9FFFC),
  ),
  Skills(
    id: 2,
    title: "Cross Platform Application",
    image: "assets/images/desktop.png",
    color: const Color(0xFFE4FFC7),
  ),
  Skills(
    id: 3,
    title: "NodeJS",
    image: "assets/images/ui.png",
    color: const Color(0xFFFFF3DD),
  ),
  Skills(
    id: 4,
    title: "Lead Developer",
    image: "assets/images/Intreaction_design.png",
    color: const Color(0xFFFFE0E0),
  ),
];
