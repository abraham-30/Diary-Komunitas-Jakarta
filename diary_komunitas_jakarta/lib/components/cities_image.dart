import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:flutter/material.dart';

class CityImage extends StatelessWidget {
  final String cityName;
  final String assetImage;
  final Color startColor;
  final Color endColor;

  const CityImage({
    super.key,
    required this.cityName,
    required this.assetImage,
    required this.startColor,
    required this.endColor
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            assetImage,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.centerRight,
              colors: [startColor, endColor]
            )
          ),
        ),
        Padding(
          padding: EdgeInsets.all(
            MediaQuery.of(context).size.width * 0.025
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              cityName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: AppTextStyles.subHeader,
                fontWeight: FontWeight.bold,
                fontFamily: AppTextStyles.fontFamilyPrimary
              ),
            ),
          )
        )
      ],
    );
  }
}