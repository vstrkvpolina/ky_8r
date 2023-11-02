import 'package:flutter/material.dart';
import 'package:ky_8r/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:ky_8r/app/data/services/auth_service.dart';
import '../controllers/signin_controller.dart';
import 'package:ky_8r/app/core/constans.dart';
import 'package:ky_8r/app/data/services/api_service.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(Constants.defaultPadding),
          child: Column(
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controller.mailController,
                decoration: const InputDecoration(hintText: "mail"),
              ),
              TextField(
                controller: controller.passController,
                decoration: const InputDecoration(hintText: "password"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: () =>  controller.signIn(), child: const Text("Login")),
              TextButton(
                onPressed: () => controller.toSignUp(), 
                child: const Text("Sign Up"))
            ],
          ),
        ),
      ),
    );
  }
}
