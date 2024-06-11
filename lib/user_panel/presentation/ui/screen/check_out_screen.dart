import 'package:flutter/material.dart';
import 'package:food_delivery_multi_panel_app/user_panel/widget/utility/back_arrow_icon.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: BackArrowIcon(onPressed: () {},),
        title: Text(
          "Checkout",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              'assets/images/app_logo.png', // Update this to your logo path
              width: 100,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}

