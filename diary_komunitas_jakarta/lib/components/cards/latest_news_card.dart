import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
import 'package:flutter/material.dart';

class LatestNewsCard extends StatelessWidget {
  const LatestNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              width: double.infinity,
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
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),              ),
              Text(
                "27 Mei 2024",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                  color: AppColors.darkerGray,
                ),
              ),
              Text(
                "Setiabudi, Jakarta Selatan",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.025,
                  color: AppColors.darkerGray
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}