import 'package:flutter/material.dart';
import 'package:food_delivery_multi_panel_app/user_panel/widget/utility/app_search_bar.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  List<bool> isSelected = [true, false];
  int _quantity = 1;

  void _increment() {
    setState(() {
      _quantity++;
    });
  }

  void _decrement() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

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
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 12, right: 12, bottom: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              cart,
            ],
          ),
        ),
      ),
    );
  }

  ListView get cart {
    return ListView.builder(
              physics: NeverScrollableScrollPhysics(),
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
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12,top: 12,bottom: 12,right: 12),
                            child: Image.asset(
                              "assets/images/burger.png",
                              height: 90,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Vegetable Burger',
                                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 12),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.delete,
                                          color: Colors.grey,
                                          size: 24,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$2.50",
                                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                        fontSize: 16,
                                        color: Colors.black
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            Icons.remove_circle_outline,
                                            color: Colors.pink,
                                          ),
                                          onPressed: _decrement,
                                        ),
                                        Text(
                                          '$_quantity',
                                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.add_circle_outline,
                                            color: Colors.pink,
                                          ),
                                          onPressed: _increment,
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
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
