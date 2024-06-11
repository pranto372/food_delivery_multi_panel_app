import 'package:flutter/material.dart';
import 'package:food_delivery_multi_panel_app/theme/colors/app_colors.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/state_holders/selected_button_controller.dart';
import 'package:food_delivery_multi_panel_app/user_panel/widget/home/menu_items.dart';
import 'package:food_delivery_multi_panel_app/user_panel/widget/utility/asset_path.dart';
import 'package:food_delivery_multi_panel_app/user_panel/widget/utility/popularItems.dart';
import 'package:get/get.dart';

import '../../../widget/category.dart';
import '../../../widget/menu/veg_non_veg_section.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final SelectedButtonController controller =
      Get.put(SelectedButtonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          AppImage.appLogo,
          width: 100,
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
              size: 40,
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
              SizedBox(height: 20),
              Category(),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: Obx(
                          () => Row(
                            children: [
                              veg_non_veg_section(
                                onTap: () {
                                  controller.changeButton(false);
                                },
                                imagePath: AppImage.NonvegImage,
                                text: 'Non-veg',
                                icon: Icons.close,
                                iconColor: controller.isButtonSelected.value
                                    ? Colors.transparent
                                    : Colors.red,
                                color: controller.isButtonSelected.value
                                    ? Colors.grey.shade200
                                    : Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              veg_non_veg_section(
                                  onTap: () {
                                    controller.changeButton(true);
                                  },
                                  imagePath: AppImage.vegImage,
                                  color: controller.isButtonSelected.value
                                      ? Colors.white
                                      : Colors.grey.shade200,
                                  icon: Icons.close,
                                  iconColor: controller.isButtonSelected.value
                                      ? Colors.red
                                      : Colors.transparent,
                                  text: 'Veg'),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Appetizers",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryColor),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Obx(
                            () => Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      controller.changeIcon(false);
                                    },
                                    icon: Icon(
                                      Icons.edit_square,
                                      color: controller.isIconSelected.value
                                          ? Colors.black
                                          : AppColors.primaryColor,
                                    )),
                                IconButton(
                                    onPressed: () {
                                      controller.changeIcon(true);
                                    },
                                    icon: Icon(
                                      Icons.window,
                                      color: controller.isIconSelected.value
                                          ? AppColors.primaryColor
                                          : Colors.black,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      MenuItems(),
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
