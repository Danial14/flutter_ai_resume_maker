import 'package:ai_resume_builder/features/auth/presentation/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  SignupController signupController = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: signupController.formKey,
          child: Column(
            children: [
              TextFormField(
                controller: signupController.nameController,
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder()
                ),
                validator: (name){
                  if(name == null || name.trim().isEmpty){
                    return "Name is required";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
              TextFormField(
                controller: signupController.emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder()
                ),
                validator: (email){
                  if(email == null || email.trim().isEmpty){
                    return "Email is required";
                  }
                  if(!(GetUtils.isEmail(email))){
                    return "Invalid Email";
                  }
                  return null;
                }
              ),
              const SizedBox(height: 16,),
              Obx((){
                return TextFormField(
                  controller: signupController.passwordController,
                  obscureText: signupController.obscurePassword.value,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: signupController.obscurePassword.value ? Icon(Icons.visibility_off)
                      :
                          Icon(Icons.visibility),
                    onPressed: (){
                        signupController.obscurePassword.value = !signupController.obscurePassword.value;
                    },
                    )
                  ),
                  validator: (password){
                    if(password == null || password.trim().isEmpty){
                      return "Password is required";
                    }
                    if(password.length < 6){
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                );
              }),
              const SizedBox(height: 16,),
              Obx((){
                return TextFormField(
                  controller: signupController.confirmPasswordController,
                  obscureText: signupController.obscureConfirmPassword.value,
                  decoration: InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: signupController.obscureConfirmPassword.value ? Icon(Icons.visibility_off)
                            :
                        Icon(Icons.visibility),
                        onPressed: (){
                          signupController.obscureConfirmPassword.value = !signupController.obscureConfirmPassword.value;
                        },
                      )
                  ),
                  validator: (password){
                    if(password == null || password.trim().isEmpty){
                      return "Password is required";
                    }
                    if(signupController.confirmPasswordController.text != signupController.passwordController.text){
                      return "Password and Confirm Password do not match";
                    }
                    return null;
                  },
                );
              }),
              const SizedBox(height: 20,),
              Obx((){
                return SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(onPressed: signupController.isLoading.value ?
                      null
                      :
                      (){
                    signupController.signup();
                  }, child: signupController.isLoading.value ? CircularProgressIndicator()
                      :
                  Text("Signup")),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
