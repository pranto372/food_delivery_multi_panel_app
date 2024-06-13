import 'package:flutter/material.dart';

import 'asset_path.dart';

class cardImage extends StatelessWidget {
  final double? hight;
  final double? topLeft;
  final double? bottomLeft;
  const cardImage({
    super.key,
    this.hight,
    this.topLeft,
    this.bottomLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 30,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeft ?? 20),
          bottomLeft: Radius.circular(bottomLeft ?? 20),
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Image.asset(
          AppImage.cardImage,
          height: hight ?? 110,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
