import 'package:flutter/material.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/ui/screen/check_out_screen.dart';
import 'package:food_delivery_multi_panel_app/user_panel/widget/utility/increment_decrement_button.dart';
import 'package:get/get.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/images/app_logo.png', // Update this to your logo path
          width: 100,
          height: 50,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ToggleButtons(
              borderRadius: BorderRadius.circular(20),
              fillColor: Colors.pink,
              selectedColor: Colors.white,
              color: Colors.black,
              constraints: BoxConstraints(minHeight: 40, minWidth: 100),
              children: <Widget>[
                Text('Delivery'),
                Text('Takeaway'),
              ],
              isSelected: isSelected,
              onPressed: (int index) {
                setState(() {
                  for (int i = 0; i < isSelected.length; i++) {
                    isSelected[i] = i == index;
                  }
                });
              },
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 16, left: 12, right: 12, bottom: 16),
            child: cartList,
          ),
          Positioned(
            top: 580,
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 15,
                      offset: Offset(0, 5),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                ),
                padding: const EdgeInsets.all(5),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 14, right: 14, bottom: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontSize: 28)),
                          Text('\$12.50',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontSize: 24)),
                        ],
                      ),
                      SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => CheckOutScreen());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          child: Text('Proceed to Checkout',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(fontSize: 18, color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ListView get cartList {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 15,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  blurRadius: 15,
                  offset: Offset(0, 5),
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 20,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, top: 12, bottom: 12, right: 12),
                    child: Image.asset(
                      "assets/images/burger.png",
                      height: 90,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 50,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: ListTile(
                          title: Text(
                            'Vegetable Burger',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                          ),
                          subtitle: Text(
                            'Size: Regular',
                          ),
                          trailing: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.delete,
                              color: Colors.pink.shade300,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(
                                  "\$2.50",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontSize: 16, color: Colors.black),
                                ),
                              ),
                              IncrementDecrementButton()
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
