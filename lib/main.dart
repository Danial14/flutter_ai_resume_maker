import 'package:ai_resume_builder/features/auth/presentation/pages/splash.dart';
import 'package:ai_resume_builder/features/resume/presentation/pages/create_resume.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI Resume Builder',
      home: CreateResumePage(),
    );
  }
}
