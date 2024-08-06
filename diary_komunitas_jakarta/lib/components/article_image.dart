import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:flutter/material.dart';

class ArticleImage extends StatelessWidget {
  const ArticleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.23,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/detail-artikel-2.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.005
        ),
        RichText(
          textAlign: TextAlign.justify,
          text: const TextSpan(
            style: TextStyle(
              color: AppColors.darkerGray,
              fontSize: AppTextStyles.label2,
              fontFamily: AppTextStyles.fontFamilyPrimary
            ),
            children: <TextSpan>[
              TextSpan(
                text: 
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies dolor vitae sem tristique, suscipit feugiat sem convallis',
              ),                            
            ]
          )
        ),
        Divider(
          height: MediaQuery.of(context).size.height * 0.007,
          color: AppColors.gray,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '27 Mei 2024',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: AppColors.darkerGray,
                    fontSize: AppTextStyles.label3,
                    fontFamily: AppTextStyles.fontFamilyPrimary,
                    fontWeight: FontWeight.normal,
                )
            ),
            Text(
              'Setiabudi, Jakarta Selatan',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: AppColors.darkerGray,
                    fontSize: AppTextStyles.label3,
                    fontFamily: AppTextStyles.fontFamilyPrimary,
                    fontWeight: FontWeight.normal,
                )
            ),
          ],
        ),
      ],
    );
  }
}