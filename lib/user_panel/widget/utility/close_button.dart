import 'package:flutter/material.dart';

import '../../../theme/colors/app_colors.dart';

class closeButton extends StatelessWidget {
  const closeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 18,
        width: 18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: AppColors.primaryColor,
                style: BorderStyle.solid,
                width: 2)),
        child: Icon(
          Icons.close,
          size: 12,
          color: AppColors.primaryColor,
        ));
  }
}
