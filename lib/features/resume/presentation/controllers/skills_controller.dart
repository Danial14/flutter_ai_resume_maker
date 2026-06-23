import 'package:ai_resume_builder/features/resume/domain/entities/skills.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkillsController extends GetxController{
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController skillController = TextEditingController();
  final List<Skills> skills = <Skills>[].obs;
  void addSkill(){
    if(!(formKey.currentState!.validate())){
      return;
    }
    skills.add(
      Skills(name: skillController.text)
    );
    skillController.clear();
  }
  void removeSkill(int index){
    skills.removeAt(index);
  }
  @override
  void onClose() {
    skillController.dispose();
    super.onClose();
  }
}