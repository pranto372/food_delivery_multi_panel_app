import 'package:flutter/material.dart';
import 'package:food_delivery_multi_panel_app/user_panel/widget/utility/asset_path.dart';
import 'package:get/get.dart';

import '../screen/main_bottom_nav_screen.dart';
import 'login_screen.dart';

class ForgorPasswordScreen extends StatefulWidget {
  const ForgorPasswordScreen({super.key});

  @override
  State<ForgorPasswordScreen> createState() => _ForgorPasswordScreenState();
}

class _ForgorPasswordScreenState extends State<ForgorPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  AppImage.appLogo,
                  width: 200,
                  height: 200,
                ),
              ),
              Text(
                'Forgot Password',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 35,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: (const InputDecoration(
                  hintText: 'Enter your email',
                  contentPadding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 15),
                )),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const MainBottomNavScreen());
                  },
                  child: const Text('Next'),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => LoginScreen());
                      },
                      child: Text(
                        'Login',
                        style: Theme.of(context).textTheme.titleMedium,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
