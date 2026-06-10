import 'package:ai_resume_builder/features/dashboard/presentation/controllers/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});
  final DashboardController dashboardController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("AI Resume Builder"),
      ),
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          const Text("Welcome",
          style: TextStyle(fontSize: 24,
          fontWeight: FontWeight.bold
          ),
          ),
          const SizedBox(height: 30,),
          SizedBox(
            width: size.width * 0.4,
            height: 55,
            child: OutlinedButton(onPressed: (){

            }, child: const Text("My Resumes"))
          ),
          const Spacer(),
          SizedBox(
            width: size.width * 0.4,
            height: 55,
            child: ElevatedButton(
              onPressed: dashboardController.logout,
              child: const Text("Logout"),
            ),
          )
        ],
      ),
      ),
    );
  }
}
