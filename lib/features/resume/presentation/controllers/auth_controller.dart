import 'package:get/get.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
  var isLoggedIn = false.obs;

  void login() async {
    isLoading.value = true;

    await Future.delayed(const Duration(seconds: 2));

    isLoggedIn.value = true;
    isLoading.value = false;
  }

  void logout() {
    isLoggedIn.value = false;
  }
}