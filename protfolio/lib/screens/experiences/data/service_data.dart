import 'package:flutter/material.dart';
import '../../../global/constants/images.dart';

class Service {
  final int? id;
  final String? title, image;
  final Color? color;

  Service({this.id, this.title, this.image, this.color});
}


// For demo list of service
List<Service> skillServices = [
  Service(
    id: 1,
    title: "Mobile Application",
    image: Images.nativeAndroid,
    color: const Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Web Application",
    image: Images.nativeAndroid,
    color: const Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "API Development",
    image: Images.nodeJs,
    color: const Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "UI/UX Design",
    image: Images.lead,
    color: const Color(0xFFFFE0E0),
  ),
];

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Mobile Application",
    image: Images.mobileApp,
    color: const Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Web Application",
    image: Images.webApp,
    color: const Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "API Development",
    image: Images.apiDev,
    color: const Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "UI/UX Design",
    image: Images.uiux,
    color: const Color(0xFFFFE0E0),
  ),
];