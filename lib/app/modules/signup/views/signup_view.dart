import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ky_8r/app/modules/signup/controllers/signup_controller.dart';


class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignupView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          const Text(
            'registration',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller.mailController,
            decoration: const InputDecoration(hintText: 'mail'),
          ),
          TextField(
            controller: controller.passController,
            decoration: const InputDecoration(hintText: 'password'),
          ),
          TextField(
            controller: controller.passRepController,
            decoration: const InputDecoration(hintText: 'repeat password'),
          ),
           const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => controller.sighUp(), child: const Text('sign up')),
        ]),
      ),
    );
  }
}
