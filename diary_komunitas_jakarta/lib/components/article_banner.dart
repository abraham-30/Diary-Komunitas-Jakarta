import 'package:flutter/material.dart';

class ArticleBanner extends StatefulWidget {
  const ArticleBanner({super.key});

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
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Felix Gustino",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        color: Colors.white
                      ),              
                    ),
                    Text(
                      "Senin, 27 Mei 2024",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        color: Colors.white
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