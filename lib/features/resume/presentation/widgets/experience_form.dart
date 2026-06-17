import 'package:ai_resume_builder/features/resume/presentation/controllers/experience_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExperienceForm extends StatelessWidget {
  const ExperienceForm({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ExperienceController experienceController = Get.find<ExperienceController>();
    return Form(
      key: experienceController.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: experienceController.companyNameController,
            decoration: const InputDecoration(
              labelText: "Company Name",
              border: OutlineInputBorder()
            ),
            validator: (companyName){
              if(companyName == null || companyName.trim().isEmpty){
                return "Company Name is required";
              }
              return null;
            },
          ),
          const SizedBox(height: 16,),
          TextFormField(
            controller: experienceController.positionController,
            decoration: const InputDecoration(
              labelText: "Position",
              border: OutlineInputBorder()
            ),
            validator: (position){
              if(position == null || position.trim().isEmpty){
                return "Position is required";
              }
              return null;
            },
          ),
          const SizedBox(height: 16,),
          TextFormField(
            controller: experienceController.startDateController,
            decoration: const InputDecoration(
              labelText: "Start Date",
              border: OutlineInputBorder()
            ),
            validator: (startDate){
              if(startDate == null || startDate.trim().isEmpty){
                return "Start date is required";
              }
              return null;
            },
            keyboardType: TextInputType.datetime,
          ),
          const SizedBox(height: 16,),
          TextFormField(
            controller: experienceController.endDateController,
            decoration: const InputDecoration(
                labelText: "End Date",
                border: OutlineInputBorder()
            ),
            validator: (endDate){
              if(endDate == null || endDate.trim().isEmpty){
                return "End date is required";
              }
              return null;
            },
            keyboardType: TextInputType.datetime,
          ),
          const SizedBox(height: 16,),
          TextFormField(
            controller: experienceController.descriptionController,
            decoration: InputDecoration(
              labelText: "Description",
              border: OutlineInputBorder(),
              alignLabelWithHint: true
            ),
            maxLines: 4,
            validator: (description){
              if(description == null || description.trim().isEmpty){
                return "Description is required";
              }
              return null;
            },
          ),
          const SizedBox(height: 16,),


        ],
      ),
    );
  }
}
