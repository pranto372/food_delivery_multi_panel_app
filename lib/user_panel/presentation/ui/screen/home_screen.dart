import 'package:flutter/material.dart';
import 'package:food_delivery_multi_panel_app/user_panel/widget/offer_banner.dart';
import 'package:food_delivery_multi_panel_app/user_panel/widget/utility/app_search_bar.dart';
import 'package:food_delivery_multi_panel_app/user_panel/widget/category.dart';
import 'package:food_delivery_multi_panel_app/user_panel/widget/home/menu_items.dart';

import '../../../widget/utility/popularItems.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          "assets/images/app_logo.png",
          width: 100,
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.location_on_sharp,
              color: Colors.pink,
              size: 32,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const AppSearchBar(),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Our Menu",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "View All",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Category(),
                      const SizedBox(height: 20),
                      const Text(
                        "Featured Items",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const MenuItems(),
                      const SizedBox(height: 25),
                      OfferBanner(),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Most Popular Items",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      PopularItems()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
