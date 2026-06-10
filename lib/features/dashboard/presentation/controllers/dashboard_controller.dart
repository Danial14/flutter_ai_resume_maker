import 'package:ai_resume_builder/features/auth/presentation/pages/login.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController{
  void logout(){
    Get.offAll((){
      return LoginPage();
    });
  }
}