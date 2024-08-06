import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Alignment alignment;
  final double size;

  const ArrowButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.size,
    this.alignment = Alignment.centerRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: IconButton(
        icon: Icon(
          icon, 
          size: size, 
          color: AppColors.dkj
        ),
        onPressed: onPressed,
      ),
    );
  }
}
