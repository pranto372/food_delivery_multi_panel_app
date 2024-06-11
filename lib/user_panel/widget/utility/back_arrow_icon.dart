import 'package:flutter/material.dart';

class BackArrowIcon extends StatelessWidget {
  final VoidCallback onPressed;

  const BackArrowIcon({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.arrow_circle_left_outlined,
        color: Colors.pink,
      ),
    );
  }
}
