import 'package:flutter/material.dart';
import 'package:food_delivery_multi_panel_app/theme/app_theme.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/ui/auth/login_screen.dart';
import 'package:get/get.dart';

class FoodieFrenzy extends StatelessWidget {
  const FoodieFrenzy({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.lightTheme,
      home: LoginScreen(),
    );
  }
}
