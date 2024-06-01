
import 'package:flutter/material.dart';
import 'package:food_delivery_multi_panel_app/theme/colors/app_colors.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/ui/auth/sign_up_with_number_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  'Welcome Back!',
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
                    hintText: 'Enter your Email')),
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
                  hintText: 'Enter your password'
                )),
              ),
              Row(
                children: [
                  // CheckboxListTile(
                  //   title: Text('Remember me'),
                  //   value: _isChecked,
                  //   activeColor: Colors.pink, // Color of the checkbox when checked
                  //   checkColor: Colors.white, // Color of the check mark
                  //   onChanged: (bool? value) {
                  //     setState(() {
                  //       _isChecked = value ?? false;
                  //     });
                  //   },
                  //   controlAffinity: ListTileControlAffinity.leading, // Position of the checkbox
                  // ),
                  Container(
                    height: 20,
                    width: 20,
                    margin: EdgeInsets.all(15),
                    child: Icon(
                      Icons.check_box,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Text('Remember me'),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Forgot Password',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '''Don't have an account?''',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => SignUpWithNumberScreen());
                      },
                      child: Text(
                        'sign Up',
                        style: Theme.of(context).textTheme.titleMedium,
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'or',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: AppColors.primaryColor)),
                  onPressed: () {},
                  child: Text(
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