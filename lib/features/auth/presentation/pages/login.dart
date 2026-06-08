import 'package:ai_resume_builder/features/auth/presentation/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final LoginController loginController = Get.put(LoginController());
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Login",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),
          ),
          const SizedBox(height: 30,),
          TextField(
            controller: loginController.emailController,
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
          ),
          const SizedBox(height: 30,
          ),
          TextField(
            controller: loginController.passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            )
          ),
          const SizedBox(height: 30),
          Obx((){
            return SizedBox(
              width: size.width * 0.4,
              child: ElevatedButton(
                onPressed: loginController.login,
                child: loginController.isLoading.value ? CircularProgressIndicator() : Text("Login")
              ),
            );
          }),
          const SizedBox(height: 10),
          TextButton(
            onPressed: (){
              Get.to((){
                return SignupPage();
              });
            },
            child: Text("Create Account")
          )
        ],
      ),
      ),
    );
  }
}
