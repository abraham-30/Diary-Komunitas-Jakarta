import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';

class CommunityCard29561 extends StatefulWidget {
  final String title;
  final String date;
  final String time;
  final String location;

  const CommunityCard29561({
    this.title = 'null',
    this.date = 'null',
    this.time = 'null',
    this.location = 'null',
    super.key
  });

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
                widget.date,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: AppTextStyles.label4,
                  fontFamily: AppTextStyles.fontFamilyPrimary
                ),
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  color: AppColors.dkj,
                  fontSize: AppTextStyles.label3,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppTextStyles.fontFamilyPrimary
                ),
              ),
              Row(
                children: [
                  Text(
                    widget.time,
                    style: const TextStyle(
                      color: AppColors.darkerGray,
                      fontSize: AppTextStyles.label4,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppTextStyles.fontFamilyPrimary
                    ),
                  ),
                  const Text(
                    ' | ',
                    style: TextStyle(
                      color: AppColors.darkerGray,
                      fontSize: AppTextStyles.label4,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppTextStyles.fontFamilyPrimary
                    ),
                  ),
                  Text(
                    widget.location,
                    style: const TextStyle(
                      color: AppColors.darkerGray,
                      fontSize: AppTextStyles.label4,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppTextStyles.fontFamilyPrimary
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}