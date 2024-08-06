import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:flutter/material.dart';

class LatestNewsCard extends StatelessWidget {
  final String title;
  final String date;
  final String location;

  const LatestNewsCard({
    this.title = 'null',
    this.date = 'null',
    this.location = 'null',
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.17,
              image: const AssetImage("assets/images/latest_news_banner.png"),
              fit: BoxFit.cover,
            )
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: AppTextStyles.label1,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppTextStyles.fontFamilyPrimary
                ),              
              ),
              Text(
                date,
                style: const TextStyle(
                  color: AppColors.darkerGray,
                  fontSize: AppTextStyles.label3,
                  fontFamily: AppTextStyles.fontFamilyPrimary
                ),
              ),
              Text(
                location,
                style: const TextStyle(
                  color: AppColors.darkerGray,
                  fontSize: AppTextStyles.label4,
                  fontFamily: AppTextStyles.fontFamilyPrimary
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}