import 'package:flutter/material.dart';
import 'package:food_delivery_multi_panel_app/theme/colors/app_colors.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/ui/auth/forgot_password_screen.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/ui/auth/guest_sign_up_screen.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/ui/auth/sign_up_with_number_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  bool _isChecked = true;

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
                'Welcome Back!',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 35,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: (const InputDecoration(
                    contentPadding:
                        EdgeInsets.only(top: 10, bottom: 10, left: 15),
                    hintText: 'Enter your Email')),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                obscureText: _obscureText,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                decoration: (InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(top: 10, bottom: 10, left: 15),
                    hintText: 'Enter your password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: _obscureText ? Colors.grey : Colors.blue,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ))),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: CheckboxListTile(
                      value: _isChecked,
                      activeColor:
                          Colors.pink, // Color of the checkbox when checked
                      checkColor: Colors.white, // Color of the check mark
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value ?? false;
                        });
                      },
                      controlAffinity: ListTileControlAffinity
                          .leading, // Position of the checkbox
                    ),
                  ),
                  Expanded(
                    flex: 45,
                    child: Text(
                      'Remember me',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => ForgorPasswordScreen());
                      },
                      child: Text(
                        'Forgot Password',
                        style: Theme.of(context).textTheme.titleMedium,
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '''Don't have an account?''',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => const SignUpWithNumberScreen());
                      },
                      child: Text(
                        'sign Up',
                        style: Theme.of(context).textTheme.titleMedium,
                      ))
                ],
              ),
              Text(
                'or',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: AppColors.primaryColor)),
                  onPressed: () {
                    Get.to(() => const GuestSignUpScreen());
                  },
                  child: const Text(
                    'Login As Guest',
                    style:
                        TextStyle(color: AppColors.primaryColor, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
