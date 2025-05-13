import 'package:flutter/material.dart';

class EducationRecord {
  final String degreeName;
  final String courseName;
  final String institutionName;
  final String logo;
  final String url;
  final String toFrom;
  final String cgpa;
  final Color? bgColor;

  EducationRecord({
    required this.degreeName,
    required this.courseName,
    required this.institutionName,
    required this.logo,
    required this.url,
    required this.toFrom,
    required this.cgpa,
    this.bgColor,
  });
}