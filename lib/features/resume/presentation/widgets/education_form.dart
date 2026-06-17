import 'package:ai_resume_builder/features/resume/presentation/controllers/education_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EducationForm extends StatelessWidget {
  const EducationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final EducationController educationController = Get.find<EducationController>();
    return Form(
      key: educationController.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: educationController.degreeController,
            decoration: const InputDecoration(
              labelText: "Degree",
              border: OutlineInputBorder()
            ),
            validator: (degree){
              if(degree == null || degree.trim().isEmpty){
                return "Degree is required";
              }
              return null;
            },
          ),
          const SizedBox(height: 16,),
          TextFormField(
            controller: educationController.instituteController,
            decoration: const InputDecoration(
              labelText: "Institute",
              border: OutlineInputBorder()
            ),
            validator: (institute){
              if(institute == null || institute.trim().isEmpty){
                return "Institute is required";
              }
              return null;
            },
          ),
          const SizedBox(height: 16,),
          TextFormField(
            controller: educationController.startYearController,
            decoration: const InputDecoration(
              labelText: "Start Year",
              border: OutlineInputBorder()
            ),
            keyboardType: TextInputType.number,
            validator: (startYear){
              if(startYear == null || startYear.trim().isEmpty){
                return "Start Year is required";
              }
              return null;
            }
          ),
          const SizedBox(height: 16,),
          TextFormField(
            controller: educationController.endYearController,
            decoration: const InputDecoration(
              labelText: "End Year",
              border: OutlineInputBorder()
            ),
            keyboardType: TextInputType.number,
            validator: (endYear){
              if(endYear == null || endYear.trim().isEmpty){
                return "End Year is required";
              }
              return null;
            },
          ),
          const SizedBox(height: 16,),
          SizedBox(
            width: size.width * 0.4,
            height: 50,
            child: ElevatedButton(
              onPressed: educationController.addEducation,
              child: const Text("Add Education"),
            )
          ),
          const SizedBox(height: 16,),
          Obx((){
            if(educationController.educations.isEmpty){
              return const SizedBox();
            }
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: educationController.educations.length,
              itemBuilder: (context, position){
                final education = educationController.educations[position];
                return Card(
                  child: ListTile(
                    title: Text(education.degree),
                  ),
                );
            },
            );
          }),
          const SizedBox(height: 16,),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: (){},
              child: Text("Next"),
            ),
          )
        ],
      ),
    );
  }
}
