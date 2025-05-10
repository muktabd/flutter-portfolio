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
    color: const Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Araf Hossain",
    review: review,
    userPic: "assets/images/image_placeholder.jpeg",
    color: const Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/image_placeholder.jpeg",
    color: const Color(0xFFFFE0E0),
  ),
  Feedback(
    id: 4,
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/image_placeholder.jpeg",
    color: const Color(0xFFFFE0E0),
  ),
  Feedback(
    id: 5,
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/image_placeholder.jpeg",
    color: const Color(0xFFFFE0E0),
  ),
];

String review =
    'Mukta is competent in mobile APP software development both for Android and iOS, and also familiar with software development process. Having good understanding for integration with backend API during mobile APP development as well as good knowledge of backend database.';
String review1 =
    'He is a very dedicated person and hard working. If you want to customize your project code and make it more flexible, then he is the best person. I strongly recommend him.';
String review3 =
    'Mukta is competent in mobile APP software development both for Android and iOS, and also familiar with software development process. Having good understanding for integration with backend API during mobile APP development as well as good knowledge of backend database.';
