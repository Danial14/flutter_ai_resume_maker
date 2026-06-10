import 'package:ai_resume_builder/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), (){
      Get.off((){
        //return LoginPage();
        return DashboardPage();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: /*Text("AI Resume Builder",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22
        ),
        )*/
        Image.asset("assets/images/logo_ai_resume_builder.png")
        ,
      ),
    );
  }
}
