import 'package:ai_resume_builder/features/resume/domain/entities/experience.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExperienceController extends GetxController{
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final companyNameController = TextEditingController();
  final positionController = TextEditingController();
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();
  final descriptionController = TextEditingController();
  List<Experience> experiences = <Experience>[].obs;

  void addExperience(){
    if(!(formKey.currentState!.validate())){
      return;
    }
    experiences.add(Experience(
      companyName: companyNameController.text.trim(),
      position: positionController.text.trim(),
      startDate: startDateController.text.trim(),
      endDate: endDateController.text.trim(),
      description: descriptionController.text.trim()
    ));
    clearFields();
  }
  void removeExperience(int position){
    experiences.removeAt(position);
  }
  @override
  void onClose() {
    // TODO: implement onClose
    companyNameController.dispose();
    positionController.dispose();
    startDateController.dispose();
    endDateController.dispose();
    descriptionController.dispose();
    super.onClose();
  }

  void clearFields(){
    companyNameController.clear();
    positionController.clear();
    startDateController.clear();
    endDateController.clear();
    descriptionController.clear();
  }
}