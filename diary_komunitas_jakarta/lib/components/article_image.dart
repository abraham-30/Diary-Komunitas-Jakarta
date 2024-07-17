import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
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
          text: TextSpan(
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.035,
              color: AppColors.darkerGray
            ),
            children: const <TextSpan>[
              TextSpan(
                text: 
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies dolor vitae sem tristique, suscipit feugiat sem convallis',
              ),                            
            ]
          )
        ),
        Divider(
          height: MediaQuery.of(context).size.height * 0.007,
          color: AppColors.lighterGray,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '27 Mei 2024',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.025,
                    fontFamily: 'PlusJakarta',
                    fontWeight: FontWeight.normal,
                    color: AppColors.darkerGray
                )
            ),
            Text(
              'Setiabudi, Jakarta Selatan',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.025,
                    fontWeight: FontWeight.normal,
                    color: AppColors.darkerGray
                )
            ),
          ],
        ),
      ],
    );
  }
}