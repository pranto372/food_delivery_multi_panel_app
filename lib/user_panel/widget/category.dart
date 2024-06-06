import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10, // You can change this to the number of items you have
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            margin: const EdgeInsets.only(right: 10), // Space between items
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: Offset(0,1),
                )
              ],
            ),
            child: Center(
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/burger.png",
                      height: 70,
                      width: 70,
                    ),
                  ),
                  Text("Burger",
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
