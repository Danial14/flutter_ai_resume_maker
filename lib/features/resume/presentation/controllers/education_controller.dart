import 'package:ai_resume_builder/features/resume/domain/entities/education.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EducationController extends GetxController{
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController degreeController = TextEditingController();
  final TextEditingController instituteController = TextEditingController();
  final TextEditingController startYearController = TextEditingController();
  final TextEditingController endYearController = TextEditingController();
  final List<Education> educations = <Education>[].obs;
  void addEducation(){
    if(formKey.currentState!.validate()) {
      educations.add(
        Education(
          degree: degreeController.text.trim(),
          institute: instituteController.text.trim(),
          startYear: startYearController.text.trim(),
          endYear: endYearController.text.trim(),
        ),
      );
      clearFields();
    }
  }
  void clearFields(){
    degreeController.clear();
    instituteController.clear();
    startYearController.clear();
    endYearController.clear();
  }
  void removeEducation(int index){
    educations.removeAt(index);
  }
  @override
  void onClose() {
    degreeController.dispose();
    instituteController.dispose();
    startYearController.dispose();
    endYearController.dispose();
    super.onClose();
  }
}