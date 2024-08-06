import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:flutter/material.dart';

class ButtonCategory extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final bool isActive;

  const ButtonCategory({
    super.key, 
    required this.buttonText,
    required this.backgroundColor,
    required this.onPressed,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.025,
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width * 0.25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: isActive? Colors.transparent : Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          )
        ]      
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isActive ? backgroundColor.withAlpha(50) : backgroundColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: AppTextStyles.label3,
            fontWeight: FontWeight.bold,
            fontFamily: AppTextStyles.fontFamilyPrimary,
          ),
        ), 
      )
    );
  }
}