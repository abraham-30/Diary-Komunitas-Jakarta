import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
import 'package:flutter/material.dart';

class StoryBanner extends StatefulWidget {
  const StoryBanner({super.key});

  @override
  State<StoryBanner> createState() => _StoryBannerState();
}

class _StoryBannerState extends State<StoryBanner> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (!_isClicked) {
              setState(() {
                _isClicked = true;
              });
            }
          },
          child: Container(
            height: MediaQuery.of(context).size.width * (0.15 + 0.05),
            width: MediaQuery.of(context).size.width * (0.15 + 0.05),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _isClicked ? AppColors.darkerGray : AppColors.dkj,
              border: Border.all(
                color: _isClicked ? AppColors.darkerGray: AppColors.dkj,
                width: 2.5,
              ),
              boxShadow: _isClicked ? [] : [
                BoxShadow(
                  color: AppColors.dkj.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                "assets/images/jakartatimur.jpg",
                height: MediaQuery.of(context).size.width * 0.15,
                width: MediaQuery.of(context).size.width * 0.15,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.15,
          child: Text(
            "Lorem Ipsum",
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.035,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}