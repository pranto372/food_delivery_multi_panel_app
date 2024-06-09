import 'package:flutter/material.dart';

class IncrementDecrementButton extends StatefulWidget {
  const IncrementDecrementButton({super.key});

  @override
  State<IncrementDecrementButton> createState() => _IncrementDecrementButtonState();
}

class _IncrementDecrementButtonState extends State<IncrementDecrementButton> {
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
    return Row(
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
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        IconButton(
          icon: Icon(
            Icons.add_circle_outline,
            color: Colors.pink,
          ),
          onPressed: _increment,
        ),
      ],
    );
  }
}
