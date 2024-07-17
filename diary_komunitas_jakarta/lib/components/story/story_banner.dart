import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
import 'package:flutter/material.dart';

class StoryBanner extends StatefulWidget {
  const StoryBanner({super.key});

  @override
  State<StoryBanner> createState() => _StoryBannerState();
}

class _StoryBannerState extends State<StoryBanner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * (0.15 + 0.05),
          width: MediaQuery.of(context).size.width * (0.15 + 0.05),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.dkj,
            border: Border.all(
              color: AppColors.dkj,
              width: 2.5
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.dkj.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 0), // Shadow position
              ),
            ]
          ),
          child: ClipOval(
            child: Image.asset(
              "assets/images/jakartatimur.jpg",
              height: MediaQuery.of(context).size.width * 0.15,
              width: MediaQuery.of(context).size.width * 0.15,
              fit: BoxFit.cover,
            ),
          )
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.15,
          child: Text(
            "Lorem Ipsum",
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.035,
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}