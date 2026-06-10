import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppMessages{
  AppMessages._();
  static void success(String message){
    Get.snackbar("Success", message, snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.green, colorText: Colors.white);
  }
  static void error(String message){
    Get.snackbar("Error", message, snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red, colorText: Colors.white);
  }
  static void info(String message){
    Get.snackbar("Info", message, snackPosition: SnackPosition.BOTTOM);
  }
}