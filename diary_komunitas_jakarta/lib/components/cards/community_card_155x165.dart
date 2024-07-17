import 'package:flutter/material.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';

class CommunityCard155165 extends StatefulWidget {
  const CommunityCard155165({super.key});

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
                        "Selasa, 28 Mei 2024",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.025,
                          color: Colors.black
                        ),
                      ),
                      Text(
                        "Lorem Ipsum",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                          fontWeight: FontWeight.bold,
                          color: AppColors.dkj
                        ),
                      ),
                      Text(
                        "12.00 - 14.00 |  Lorem Ipsum",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.025,
                          fontWeight: FontWeight.bold,
                          color: AppColors.darkerGray
                        ),
                      ),
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