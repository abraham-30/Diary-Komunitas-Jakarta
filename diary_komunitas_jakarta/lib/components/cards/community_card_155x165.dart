import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';

class CommunityCard155165 extends StatefulWidget {
  final String title;
  final String date;
  final String time;
  final String location;
  
  const CommunityCard155165({
    this.title = 'null',
    this.date = 'null',
    this.time = 'null',
    this.location = 'null',
    super.key
  });

  @override
  State<CommunityCard155165> createState() => _CommunityCard155165State();
}

class _CommunityCard155165State extends State<CommunityCard155165> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: MediaQuery.of(context).size.width * 0.035
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 4,
              offset: const Offset(0, 0),
            )
          ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
                child: const Image(
                  image: AssetImage("assets/images/color-run.png"),
                  fit: BoxFit.cover,
                ),
              ),   
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
                child: Padding(
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.width * 0.03
                  ),
                  child: Column(
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
                            ),
                          ),
                          const Text(
                            ' | ',
                            style: TextStyle(
                              color: AppColors.darkerGray,
                              fontSize: AppTextStyles.label4,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            widget.location,
                            style: const TextStyle(
                              color: AppColors.darkerGray,
                              fontSize: AppTextStyles.label4,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                )
              ),    
            ],
          ),
        )
      )
    );
  }
}