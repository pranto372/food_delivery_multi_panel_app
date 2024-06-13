import 'package:flutter/material.dart';

class veg_non_veg_section extends StatelessWidget {
  final String imagePath;
  final Color color;
  final Color iconColor;
  final Widget icon;
  final String text;
  final double? size;
  final VoidCallback onTap;

  const veg_non_veg_section({
    super.key,
    required this.imagePath,
    required this.color,
    required this.icon,
    required this.text,
    required this.iconColor,
    this.size,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 130,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            )),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              scale: size,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 5,
            ),
            icon
          ],
        ),
      ),
    );
  }
}
