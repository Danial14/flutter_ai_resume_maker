import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResumeController extends GetxController{
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final summaryController = TextEditingController();
  final addressController = TextEditingController();
  final linkedinController = TextEditingController();
  final githubController = TextEditingController();

  Future<bool> goToEducation() async{
    if(formKey.currentState!.validate()){
      clearFields();
      return true;
    }
    return false;
  }
  void clearFields(){
    fullNameController.clear();
    emailController.clear();
    phoneController.clear();
    summaryController.clear();
    addressController.clear();
    linkedinController.clear();
    githubController.clear();
  }
  @override
  void onClose() {
    fullNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    summaryController.dispose();
    addressController.dispose();
    linkedinController.dispose();
    githubController.dispose();
    super.onClose();
  }
}