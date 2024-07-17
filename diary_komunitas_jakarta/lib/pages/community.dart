import 'package:diary_komunitas_jakarta/components/appbars/floating_navbar.dart';
import 'package:diary_komunitas_jakarta/pages/article.dart';
import 'package:diary_komunitas_jakarta/pages/beranda.dart';
import 'package:diary_komunitas_jakarta/pages/profile.dart';
import 'package:flutter/material.dart';
import '../pages/detail_community.dart';
import '../custom_style/app_color.dart';
import '../components/appbars/centered_app_bar.dart';
import '../components/cards/community_card_155x165.dart';
import '../components/cards/community_card_295x61.dart';
import '../components/buttons/btn_category.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  final PageController _pageController = PageController();
  int _selectedIndex = 2;

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
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => const ArticlePage())
          );
          break;
        case 2:
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
      appBar: const CenteredAppBar(
        isBackButton: false,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.01,
                  // horizontal: MediaQuery.of(context).size.width * 0.05
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.02,
                        horizontal: MediaQuery.of(context).size.width * 0.07
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: AppColors.gray,
                            width: 1,
                          )
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.03
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Cari',
                              border: InputBorder.none,
                              icon: Icon(Icons.search),
                            ),
                          ),
                        )
                      )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.07
                          ),
                          child: Text(
                            "Aktivitas Populer",
                            textAlign: TextAlign.left,
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
                            padding: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.07,
                              MediaQuery.of(context).size.height * 0.009,
                              MediaQuery.of(context).size.width * 0.07,
                              MediaQuery.of(context).size.height * 0.02
                            ),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context) => const DetailCommunity()));
                                  },
                                  child: const CommunityCard155165(),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context) => const DetailCommunity()));
                                  },
                                  child: const CommunityCard155165(),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (context) => const DetailCommunity()));
                                  },
                                  child: const CommunityCard155165(),
                                ),
                              ],
                            ),
                          )
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.07,
                      ),
                      child: Text(
                        "Aktivitas Lainnya",
                        textAlign: TextAlign.left,
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
                        padding: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width * 0.07,
                          MediaQuery.of(context).size.height * 0.009,
                          MediaQuery.of(context).size.width * 0.07,
                          MediaQuery.of(context).size.height * 0.02
                        ),
                        child: Row(
                          children:[
                            ButtonCategory(
                              buttonText: 'Olahraga',
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
                              buttonText: 'Sosial',
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
                              buttonText: 'Seni',
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
                              buttonText: 'Budaya',
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
                              buttonText: 'Belajar',
                              onPressed: (){
                                // print("test");
                              },
                              isActive: true,
                              backgroundColor: AppColors.jaksel,
                            ),
                          ]
                        ),
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.07,
                      ),
                      child:  Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => const DetailCommunity()));
                            },
                            child: const CommunityCard29561(),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => const DetailCommunity()));
                            },
                            child: const CommunityCard29561(),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => const DetailCommunity()));
                            },
                            child: const CommunityCard29561(),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => const DetailCommunity()));
                            },
                            child: const CommunityCard29561(),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => const DetailCommunity()));
                            },
                            child: const CommunityCard29561(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15
                    ),
                  ],
                )
              ) 
            )
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