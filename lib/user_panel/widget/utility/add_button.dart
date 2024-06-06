import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.pink),
        ),
        child: Row(
          children: [
            Icon(
              Icons.shopping_bag,
              color: Colors.pink,
              size: 14,
            ),
            const SizedBox(width: 4),
            Text(
              "Add",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}