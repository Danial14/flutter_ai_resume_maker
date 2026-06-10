import 'package:ai_resume_builder/features/resume/presentation/widgets/personal_information_form.dart';
import 'package:flutter/material.dart';

class CreateResumePage extends StatelessWidget {
  const CreateResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Information"),
      ),
      body: SafeArea(child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: PersonalInformationForm(),
      )),
    );
  }
}
