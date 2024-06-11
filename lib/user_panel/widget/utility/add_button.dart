import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Material(
        elevation: 5,
        shadowColor: Colors.grey.shade200,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          height: 22,
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
      ),
    );
    // return Padding(
    //   padding: const EdgeInsets.all(4.0),
    //   child: OutlinedButton(
    //       onPressed: () {},
    //       child: Row(
    //         children: [
    //           Icon(
    //             Icons.shopping_bag,
    //             color: Colors.pink,
    //             size: 14,
    //           ),
    //           Text(
    //             "Add",
    //             style: TextStyle(
    //               fontSize: 14,
    //               fontWeight: FontWeight.w500,
    //               color: Colors.pink,
    //             ),
    //           ),
    //         ],
    //       )),
    // );
  }
}
