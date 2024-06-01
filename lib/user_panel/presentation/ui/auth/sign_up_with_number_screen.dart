import 'package:flutter/material.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/ui/auth/login_screen.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/ui/auth/sign_up_screen.dart';
import 'package:get/get.dart';

class SignUpWithNumberScreen extends StatelessWidget {
  const SignUpWithNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.all(16),
          child:
           Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Center(
              child: Image.asset(
                "assets/images/app_logo.png",
                width: 200,
                height: 200,
              ),
            ),
            Center(
              child: Text(
                '''Let's get started''',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'Mobile Number',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                    flex: 30,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '+880',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 70,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: (InputDecoration(
                        contentPadding:
                            EdgeInsets.only(top: 10, bottom: 10, left: 15))),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => SignUpScreen());
                },
                child: Text('Continue'),
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
          ])),
    ));
  }
}
