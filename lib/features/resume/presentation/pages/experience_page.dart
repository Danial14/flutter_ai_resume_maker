import 'package:ai_resume_builder/features/resume/presentation/controllers/experience_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExperiencePage extends StatelessWidget {
  ExperiencePage({super.key});
  final ExperienceController experienceController = Get.put<ExperienceController>(ExperienceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Experience"),
      ),
      body: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
      )),
    );
  }
}
