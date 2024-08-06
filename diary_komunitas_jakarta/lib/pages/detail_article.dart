import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
import 'package:diary_komunitas_jakarta/components/appbars/custom_app_bar.dart';
import 'package:diary_komunitas_jakarta/components/article_image.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:flutter/material.dart';

class DetailArticle extends StatefulWidget {
  final String title;
  final String author;
  final String date;
  final String location;
  const DetailArticle({
    this.title = 'Lorem Ipsum Dolor Sit Amet',
    this.author = 'Paundra',
    this.date = '6 Agustus 2024',
    this.location = 'BCA Learning Institute',
    super.key
  });

  @override
  State<DetailArticle> createState() => _DetailArticleState();
}

class _DetailArticleState extends State<DetailArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isBackButton: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 1,
                  child: const Image(
                    image: AssetImage("assets/images/detail-artikel-1.png"),
                    fit: BoxFit.cover,
                  ),                  
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white.withOpacity(1),
                        const Color.fromRGBO(178, 178, 178, 1).withOpacity(0.2),
                        const Color.fromRGBO(178, 178, 178, 1).withOpacity(0),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.265,
                  left: MediaQuery.of(context).size.width * 0.01,
                  right: MediaQuery.of(context).size.width * 0.01,
                  child: Padding(
                    padding:EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.05,
                      MediaQuery.of(context).size.height * 0.01,
                      MediaQuery.of(context).size.width * 0.05,
                      MediaQuery.of(context).size.height * 0.01
                    ),
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        height: MediaQuery.of(context).size.height * 0.0012,
                        color: AppColors.dkj,
                        fontSize: AppTextStyles.header,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppTextStyles.fontFamilyPrimary
                      )
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding:EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.07
              ),
              child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.01
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Ditulis oleh ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: AppTextStyles.label2,
                              fontWeight: FontWeight.normal,
                              fontFamily: AppTextStyles.fontFamilyPrimary
                            )
                          ),
                          Text(
                            widget.author,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: AppTextStyles.label2,
                              fontWeight: FontWeight.bold,
                              fontFamily: AppTextStyles.fontFamilyPrimary,
                            )
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.date,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: AppTextStyles.label3,
                              fontWeight: FontWeight.normal,
                              fontFamily: AppTextStyles.fontFamilyPrimary,
                            )
                          ),
                          Text(
                            widget.location,
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: AppTextStyles.label3,
                                fontWeight: FontWeight.normal,
                                fontFamily: AppTextStyles.fontFamilyPrimary,
                              )
                          ),
                        ],
                      ),          
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: AppTextStyles.label2,
                          fontFamily: AppTextStyles.fontFamilyPrimary
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                              '(Lorem ipsum)',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            )
                          ),
                          TextSpan(
                            text:
                              ' - '
                          ),
                          TextSpan(
                            text: 
                              'dolor sit amet, consectetur adipiscing elit. '
                              'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                              'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                              'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n',
                          ),                            
                        ]
                      )
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Lorem Ipsum",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: AppTextStyles.label1,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppTextStyles.fontFamilyPrimary
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: AppTextStyles.label2,
                          fontFamily: AppTextStyles.fontFamilyPrimary,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 
                            'Cras sed leo quis nulla dictum sagittis sed ut dui. '
                            'Maecenas congue, velit vitae consequat efficitur, quam sem blandit nibh, non luctus tellus massa ut leo. ' 
                            'Fusce accumsan porta urna pretium varius. '
                            'Aliquam accumsan pulvinar augue vitae mollis. '
                            'Praesent commodo et ligula nec interdum. '
                            'Mauris sodales lorem sem, sit amet euismod sapien ornare congue. '
                            'Nullam ornare faucibus ligula, quis tincidunt ipsum placerat a. '
                            'Proin maximus vehicula arcu nec sollicitudin. Nullam ante eros, fringilla vel tellus vitae, sollicitudin venenatis tellus.'
                          ),                            
                        ]
                      )
                    )
                  ],
                ), 
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.02
                  ),
                  child: const ArticleImage(),         
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Lorem Ipsum",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: AppTextStyles.label1,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppTextStyles.fontFamilyPrimary
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: AppTextStyles.label2,
                          fontFamily: AppTextStyles.fontFamilyPrimary
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 
                            'Vivamus sagittis lacus vitae lobortis cursus. '
                            'Fusce pulvinar nec ipsum sed gravida. '
                            'Sed accumsan congue turpis, quis euismod arcu congue id. '
                            'Cras accumsan nec lacus in viverra. '
                            'Praesent dictum dolor quam, sed rutrum lorem pulvinar ac. '
                            'Etiam egestas massa id libero volutpat, sit amet tempor leo auctor. '
                            'Suspendisse tincidunt sapien vitae sapien elementum congue. '
                            'Nam nec pulvinar nibh. '
                            'Aliquam viverra placerat pulvinar. '
                            'Donec efficitur velit non nunc congue, eget fringilla lorem pellentesque. '
                            'Pellentesque viverra eget enim nec porttitor.'
                          ),   
                          TextSpan(
                            text: '\n\n',
                          ),
                          TextSpan(
                            text: 
                            'Vivamus sagittis lacus vitae lobortis cursus. '
                            'Fusce pulvinar nec ipsum sed gravida. '
                            'Sed accumsan congue turpis, quis euismod arcu congue id. '
                            'Cras accumsan nec lacus in viverra. '
                            'Praesent dictum dolor quam, sed rutrum lorem pulvinar ac. '
                            'Etiam egestas massa id libero volutpat, sit amet tempor leo auctor. '
                            'Suspendisse tincidunt sapien vitae sapien elementum congue. '
                            'Nam nec pulvinar nibh. '
                            'Aliquam viverra placerat pulvinar. '
                            'Donec efficitur velit non nunc congue, eget fringilla lorem pellentesque. '
                            'Pellentesque viverra eget enim nec porttitor.'
                          ),                               
                        ]
                      )
                    )
                  ],
                ),              
              ],
            )
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07
            ),          
          ],
        )
      )
    );
  }
}