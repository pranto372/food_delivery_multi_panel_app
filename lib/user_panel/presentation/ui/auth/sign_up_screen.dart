
import 'package:flutter/material.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/ui/screen/main_bottom_nav_screen.dart';
import 'package:get/get.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscureText = true;

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
                  "assets/images/app_logo.png",
                  width: 200,
                  height: 200,
                ),
              ),
              Text(
                'Create Account',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 35,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: (const InputDecoration(
                    hintText: 'Enter your first name',
                  contentPadding: EdgeInsets.only(top: 10,bottom: 10,left: 15),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: (const InputDecoration(
                  hintText: 'Enter your last name',
                  contentPadding: EdgeInsets.only(top: 10,bottom: 10,left: 15),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: (const InputDecoration(
                  hintText: 'Enter your E-mail',
                  contentPadding: EdgeInsets.only(top: 10,bottom: 10,left: 15),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: _obscureText,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                decoration: (InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 10,bottom: 10,left: 15),
                    hintText: 'Enter your password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: _obscureText ? Colors.grey : Colors.blue,
                      ),
                      onPressed: (){
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )
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
                    Get.to(()=> const MainBottomNavScreen());
                  },
                  child: const Text('Create'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}