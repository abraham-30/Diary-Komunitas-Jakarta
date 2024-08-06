import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:flutter/material.dart';

class ArticleBanner extends StatefulWidget {
  final String title;
  final String author;
  final String date;

  const ArticleBanner({
    this.title = 'null',
    this.author = 'Felix Gustino',
    this.date = 'Senin, 27 Mei 2025',
    super.key
  });

  @override
  State<ArticleBanner> createState() => _ArticleBannerState();
}

class _ArticleBannerState extends State<ArticleBanner> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.18,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/article_banner_background.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.18,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.2),
              ],
            ),     
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.width * 0.03
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: AppTextStyles.label1,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppTextStyles.fontFamilyPrimary
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.author,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: AppTextStyles.label3,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppTextStyles.fontFamilyPrimary
                      ),              
                    ),
                    Text(
                      widget.date,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: AppTextStyles.label3,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppTextStyles.fontFamilyPrimary
                      ),                
                    )
                  ],
                )
              ],
            ),
          )    
        ),
      ],
    );
  }
}