import 'package:flutter/material.dart';

class CustomButtonPrimary extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color textColor;
  final Color buttonColor;
  final Color borderColor;
  final double borderWidth;
  final bool isActive;

  const CustomButtonPrimary({
    super.key, 
    required this.onPressed,
    required this.buttonText,
    required this.textColor,
    required this.buttonColor,
    required this.borderColor,
    required this.borderWidth,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width;
    double dynamicFontSize = buttonWidth * 0.035;
    
    return Container(
      width: buttonWidth,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 2,
            spreadRadius: 1,
            offset: const Offset(0, 1),
          )
        ]   
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontFamily: 'PlusJakarta',
            fontSize: dynamicFontSize,
            fontWeight: FontWeight.w400,
            color: textColor
          ),
        ),
      )
    );
  }
}