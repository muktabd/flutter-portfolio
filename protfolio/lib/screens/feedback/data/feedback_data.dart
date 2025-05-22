import 'package:flutter/material.dart';

class Feedback {
  final String? name, review, userPic;
  final int? id;
  final Color? color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Xuegang Cheng",
    review: review,
    userPic: "assets/images/image_placeholder.jpeg",
    color: const Color(0x62FFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Araf Hossain",
    review: review1,
    userPic: "assets/images/image_placeholder.jpeg",
    color: const Color(0x7FD9FFFC),
  ),
  Feedback(
    id: 3,
    name: "Subod Kumar",
    review: review3,
    userPic: "assets/images/image_placeholder.jpeg",
    color: const Color(0x5FFFE0E0),
  ),
  Feedback(
    id: 4,
    name: "Nazrul Islam",
    review: review4,
    userPic: "assets/images/image_placeholder.jpeg",
    color: const Color(0x5FFFE0E0),
  ),
];

String review =
    'Mukta is competent in mobile APP software development both for Android and iOS, and also familiar with software development process. Having good understanding for integration with backend API during mobile APP development as well as good knowledge of backend database.';
String review1 =
    'He is a very dedicated person and hard working. If you want to customize your project code and make it more flexible, then he is the best person. I strongly recommend him.';
String review3 =
    'Mukta is a very talented and hard working person. He is very dedicated to his work and always tries to do his best. I am very happy to have him as my colleague.';
String review4 =
    'Mukta Bhia has excellent team leadership skills. He always manage to make task done in unthinable way. He is a very good team player and always ready to help others.';
