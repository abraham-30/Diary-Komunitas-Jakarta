import 'package:flutter/material.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';

class CommunityCard29561 extends StatefulWidget {
  const CommunityCard29561({super.key});

  @override
  State<CommunityCard29561> createState() => _CommunityCard29561State();
}

class _CommunityCard29561State extends State<CommunityCard29561> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 0),
          )
        ]
      ),
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            child: Padding(
              padding: EdgeInsets.all(
                MediaQuery.of(context).size.height * 0.01
              ),
              child: const Image(
                image: AssetImage("assets/images/bluejack.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selasa, 28 May 2024",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.025,
                  color: Colors.black
                ),
                ),
              Text(
                "Lorem Ipsum Dolor Sit Amet",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                  fontWeight: FontWeight.bold,
                  color: AppColors.dkj
                ),
              ),
              Text(
                "12.00 - 14.00 | Jakarta Sport Center",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.025,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkerGray
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}