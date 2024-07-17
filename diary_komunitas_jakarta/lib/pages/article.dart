import 'package:diary_komunitas_jakarta/components/appbars/floating_navbar.dart';
import 'package:diary_komunitas_jakarta/components/article_banner.dart';
import 'package:diary_komunitas_jakarta/components/cards/latest_news_card.dart';
import 'package:diary_komunitas_jakarta/components/story/story_banner.dart';
import 'package:diary_komunitas_jakarta/pages/beranda.dart';
import 'package:diary_komunitas_jakarta/pages/community.dart';
import 'package:diary_komunitas_jakarta/pages/detail_article.dart';
import 'package:diary_komunitas_jakarta/pages/profile.dart';
import 'package:flutter/material.dart';
import '../components/buttons/btn_category.dart';
import '../components/appbars/left_app_bar.dart';
import '../custom_style/app_color.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  late PageController _pageController;
  int _currentPage = 0;
  int _selectedIndex = 1;

  final List<Widget> _items = [
    const LatestNewsCard(),
    const LatestNewsCard(),
    const LatestNewsCard(),
    const LatestNewsCard(),
    const LatestNewsCard(),
  ];

  @override
  void initState(){
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.85,
    );
  }

  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
      switch(index){
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BerandaPage())
          );
          break;
        case 1:
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CommunityPage())
          );
          break;
        case 3:
          break;
        case 4:
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => const ProfilePage())
          );
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LeftAppBar(
        isBackButton: false,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.07,
                        ),
                        child: Text(
                          "Untuk Anda",
                          style: TextStyle(
                            color: AppColors.dkj,
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.width * 0.057,
                          ),  
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.007,
                            horizontal: MediaQuery.of(context).size.width * 0.07
                          ),
                          child: Row(
                            children: [
                              const StoryBanner(),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03
                              ),                              
                              const StoryBanner(),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03
                              ),                              
                              const StoryBanner(),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03
                              ),                              
                              const StoryBanner(),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03
                              ),                              
                              const StoryBanner()
                            ]
                          ),  
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.07,
                        ),
                        child: Text(
                          "Berita Terbaru",
                          style: TextStyle(
                            color: AppColors.dkj,
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.width * 0.057,
                          ),  
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.33,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.02
                          ),
                          child: PageView.builder(
                            itemCount: _items.length,
                            controller: _pageController,
                            onPageChanged: (int page){
                              setState(() {
                                _currentPage = page;
                              });
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return _items[index % _items.length];
                            }
                          ),
                        )
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.07,
                            vertical: MediaQuery.of(context).size.height * 0.02
                          ),
                          child: Row(
                            children:[
                              ButtonCategory(
                                buttonText: 'Pusat',
                                onPressed: (){
                                  // print("test");
                                },
                                isActive: true,
                                backgroundColor: AppColors.jakpus,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.015
                              ),
                              ButtonCategory(
                                buttonText: 'Utara',
                                onPressed: (){
                                  // print("test");
                                },
                                isActive: true,
                                backgroundColor: AppColors.jakut,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.015
                              ),
                                ButtonCategory(
                                buttonText: 'Barat',
                                onPressed: (){
                                  // print("test");
                                },
                                isActive: true,
                                backgroundColor: AppColors.jakbar,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.015
                              ),
                              ButtonCategory(
                                buttonText: 'Timur',
                                onPressed: (){
                                  // print("test");
                                },
                                isActive: true,
                                backgroundColor: AppColors.jaktim,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.015
                              ),
                              ButtonCategory(
                                buttonText: 'Selatan',
                                onPressed: (){
                                  // print("test");
                                },
                                isActive: true,
                                backgroundColor: AppColors.jaksel,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.015
                              ),
                              ButtonCategory(
                                buttonText: 'Kp. Seribu',
                                onPressed: (){
                                  // print("test");
                                },
                                isActive: true,
                                backgroundColor: AppColors.kepSeribu,
                              ),
                            ]
                          ),
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.07
                        ),
                        child: Column(
                          children:[
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const DetailArticle()));
                              },                      
                              child: const ArticleBanner(),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const DetailArticle()));
                              },  
                              child: const ArticleBanner(),
                            ),                      
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const DetailArticle())
                                  );
                              },           
                              child: const ArticleBanner(),
                            ),                      
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const DetailArticle())
                                  );
                              },           
                              child: const ArticleBanner(),
                            ),                      
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const DetailArticle())
                                );
                              },         
                              child: const ArticleBanner(),
                            ),                    
                          ]
                        )
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15
                      ),
                    ],
                  ),
                ),
              ),
            ),
            FloatingBottomNavBar(
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            )
          ],
        )
    );
  }
}