
import 'package:flutter/material.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/ui/screen/main_bottom_nav_screen.dart';
import 'package:get/get.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200, left: 55, right: 20),
                child: Text(
                  'Create Account',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: (InputDecoration(
                    hintText: 'Enter your first name',
                    labelText: 'First Name')),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: (InputDecoration(
                  hintText: 'Enter your last name',
                  labelText: 'Last Name',
                )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: (InputDecoration(
                  hintText: 'Enter your email',
                  labelText: 'Email',
                )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: (InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  hintText: 'Enter your password',
                  labelText: 'Password',
                )),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(()=> MainBottomNavScreen());
                  },
                  child: Text('Create'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}