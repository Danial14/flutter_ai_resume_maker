import 'package:ai_resume_builder/features/resume/presentation/controllers/education_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/education_form.dart';

class EducationPage extends StatelessWidget {
  EducationPage({super.key});
  final EducationController educationController = Get.put(EducationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: EducationForm(),
        ),
      ),
    );
  }
}
