import 'package:flutter/material.dart';
import 'package:food_delivery_multi_panel_app/theme/colors/app_colors.dart';
import 'package:food_delivery_multi_panel_app/user_panel/widget/app_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16,right: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/app_logo.png",
                    width: 100,
                    height: 50,
                  ),
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.location_on_sharp,color: Colors.pink,
                      size: 32,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              AppSearchBar(),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Our Menu",
                    style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold
                    )
                  ),
                  TextButton(onPressed: (){}, child: Text(
                    "View All",
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


