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
    userPic: "assets/images/people.png",
    color: const Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Jhon Doe",
    review: review,
    userPic: "assets/images/people.png",
    color: const Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/people.png",
    color: const Color(0xFFFFE0E0),
  ),
];

String review ='Mukta is competent in mobile APP software development both for Android and iOS, and also familiar with software development process. Having good understanding for integration with backend API during mobile APP development as well as good knowledge of backend database.';
String review1 ='Mukta is competent in mobile APP software development both for Android and iOS, and also familiar with software development process. Having good understanding for integration with backend API during mobile APP development as well as good knowledge of backend database.';
String review3 ='Mukta is competent in mobile APP software development both for Android and iOS, and also familiar with software development process. Having good understanding for integration with backend API during mobile APP development as well as good knowledge of backend database.';
