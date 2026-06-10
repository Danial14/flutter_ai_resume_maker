import 'package:ai_resume_builder/features/resume/presentation/controllers/resume_controller.dart';
import 'package:ai_resume_builder/features/resume/presentation/pages/education_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalInformationForm extends StatelessWidget {
  PersonalInformationForm({super.key});
  final ResumeController resumeController = Get.put(ResumeController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: resumeController.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: resumeController.fullNameController,
            decoration: InputDecoration(
              labelText: "Full Name",
              border: OutlineInputBorder()
            ),
            validator: (fullName){
              if(!(fullName != null) || fullName.trim().isEmpty){
                return "Full name is required";
              }
              return null;
            },
          ),
          const SizedBox(height: 16,),
          TextFormField(
            controller: resumeController.emailController,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder()
            ),
            validator: (email){
              if(!(GetUtils.isEmail(email!))){
                return "Invalid Email";
              }
              return null;
            },
          ),
          const SizedBox(height: 16,),
          TextFormField(
            controller: resumeController.phoneController,
            keyboardType:   TextInputType.phone,
            decoration: InputDecoration(
              labelText: "Phone Number",
              border: OutlineInputBorder()
            ),
            validator: (phoneNumber){
              if(phoneNumber == null || phoneNumber.trim().isEmpty){
                return "Phone number is required";
              }
              return null;
            },
          ),
          const SizedBox(height: 16,),
          TextFormField(
            controller: resumeController.addressController,
            decoration: InputDecoration(
              labelText: "Address",
              border: OutlineInputBorder()
            ),
            validator: (address){
              if(address == null || address.trim().isEmpty){
                return "Address is required";
              }
              return null;
            },
          ),
          const SizedBox(height: 16,),
          TextFormField(
            controller: resumeController.linkedinController,
            decoration: InputDecoration(
              labelText: "Linkedin",
              border: OutlineInputBorder()
            )
          ),
          const SizedBox(height: 16,),
          TextFormField(
            controller: resumeController.githubController,
            decoration: InputDecoration(
              labelText: "Github Profile",
              border: OutlineInputBorder()
            ),
            validator: (github){
              if(github == null || github.trim().isEmpty){
                return "Github Profile is required";
              }
              return null;
            },
          ),
          const SizedBox(height: 16,),
          SizedBox(
            width: size.width * 0.4,
            height: 55,
            child: ElevatedButton(onPressed: () async{
              // Navigate Education Page
              bool shouldGoToEducation = await resumeController.goToEducation();
              if(shouldGoToEducation){
                Get.to((){
                  return EducationPage();
                });
              }
            }, child: const Text("Next")),
          )
        ],
      ),
    );
  }
}
