import 'package:diary_komunitas_jakarta/components/appbars/floating_navbar.dart';
import 'package:diary_komunitas_jakarta/components/appbars/left_app_bar.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:diary_komunitas_jakarta/pages/article.dart';
import 'package:diary_komunitas_jakarta/pages/beranda.dart';
import 'package:diary_komunitas_jakarta/pages/pelaporan.dart';
import 'package:diary_komunitas_jakarta/pages/profile.dart';
import 'package:flutter/material.dart';
import '../pages/detail_community.dart';
import '../custom_style/app_color.dart';
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
  String _activeButton = 'Olahraga';

  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

  final List<CommunityCard155165> _listPopularCommunity = [
     const CommunityCard155165(
      title: "Forum Jakarta Run",
      date: "15 Agustus 2024",
      location: "Jakarta Pusat",
      time: "10:00 - 12:00",
    ),
    const CommunityCard155165(
      title: "Diskusi Teknologi Terkini",
      date: "22 Agustus 2024",
      location: "Jakarta Utara",
      time: "14:00 - 16:00",
    ),
    const CommunityCard155165(
      title: "Seminar Kesehatan dan Nutrisi",
      date: "29 Agustus 2024",
      location: "Jakarta Timur",
      time: "09:00 - 11:00",
    ),
    const CommunityCard155165(
      title: "Workshop Pengembangan Kreatif",
      date: "05 September 2024",
      location: "Jakarta Selatan",
      time: "13:00 - 15:00",
    ),
    const CommunityCard155165(
      title: "Kelas Yoga dan Meditasi",
      date: "12 September 2024",
      location: "Kepulauan Seribu",
      time: "08:00 - 09:30",
    ),
  ];


  final Map<String, List<Map<String, dynamic>>> _listItems = {
    "Olahraga": [
      {
        "title": "Komunitas Atletik Semangat Tinggi",
        "date": "15 Agustus 2024",
        "location": "Jakarta Selatan",
        "time": "07:00 - 09:00"
      },
      {
        "title": "Garda Olahraga Energi Positif",
        "date": "22 Agustus 2024",
        "location": "Jakarta Utara",
        "time": "08:00 - 10:00"
      },
      {
        "title": "Tim Kebugaran Vortex Modern",
        "date": "29 Agustus 2024",
        "location": "Jakarta Timur",
        "time": "10:00 - 12:00"
      },
      {
        "title": "Pionir Olahraga Sejati Berprestasi",
        "date": "05 September 2024",
        "location": "Jakarta Pusat",
        "time": "13:00 - 15:00"
      },
      {
        "title": "Kumpulan Atletik Aktif Bersama",
        "date": "12 September 2024",
        "location": "Kepulauan Seribu",
        "time": "14:00 - 16:00"
      }
    ],
    "Sosial": [
      {
        "title": "Jaringan Kebaikan Sosial Terpadu",
        "date": "16 Agustus 2024",
        "location": "Jakarta Selatan",
        "time": "09:00 - 11:00"
      },
      {
        "title": "Sahabat Sejati Peduli Sesama",
        "date": "23 Agustus 2024",
        "location": "Jakarta Barat",
        "time": "11:00 - 13:00"
      },
      {
        "title": "Gerakan Peduli Komunitas Lokal",
        "date": "30 Agustus 2024",
        "location": "Jakarta Timur",
        "time": "12:00 - 14:00"
      },
      {
        "title": "Komunitas Kasih Sosial Berdaya",
        "date": "06 September 2024",
        "location": "Jakarta Utara",
        "time": "15:00 - 17:00"
      },
      {
        "title": "Saling Support Tanpa Batas",
        "date": "13 September 2024",
        "location": "Kepulauan Seribu",
        "time": "16:00 - 18:00"
      }
    ],
    "Seni": [
      {
        "title": "Galeri Kreatif Seni Berkarya",
        "date": "17 Agustus 2024",
        "location": "Jakarta Pusat",
        "time": "10:00 - 12:00"
      },
      {
        "title": "Seni Eksplorasi Tanpa Batas",
        "date": "24 Agustus 2024",
        "location": "Jakarta Barat",
        "time": "12:00 - 14:00"
      },
      {
        "title": "Mata Karya Seni Inovatif",
        "date": "31 Agustus 2024",
        "location": "Jakarta Selatan",
        "time": "14:00 - 16:00"
      },
      {
        "title": "Ruang Imajinasi Kreatif Terbuka",
        "date": "07 September 2024",
        "location": "Jakarta Timur",
        "time": "16:00 - 18:00"
      },
      {
        "title": "Kumpulan Artis Berkarya Cemerlang",
        "date": "14 September 2024",
        "location": "Kepulauan Seribu",
        "time": "18:00 - 20:00"
      }
    ],
    "Budaya": [
      {
        "title": "Warisan Nusantara Pelestari Tradisi",
        "date": "18 Agustus 2024",
        "location": "Jakarta Selatan",
        "time": "09:00 - 11:00"
      },
      {
        "title": "Pelestari Tradisi Budaya Kuno",
        "date": "25 Agustus 2024",
        "location": "Jakarta Barat",
        "time": "11:00 - 13:00"
      },
      {
        "title": "Cinta Budaya Sejati Bersama",
        "date": "01 September 2024",
        "location": "Jakarta Timur",
        "time": "13:00 - 15:00"
      },
      {
        "title": "Kebudayaan Bersama Masyarakat Lokal",
        "date": "08 September 2024",
        "location": "Jakarta Utara",
        "time": "15:00 - 17:00"
      },
      {
        "title": "Harmoni Warisan Budaya Indonesia",
        "date": "15 September 2024",
        "location": "Kepulauan Seribu",
        "time": "16:00 - 18:00"
      }
    ],
    "Belajar": [
      {
        "title": "Pusat Pengetahuan Belajar Terbaik",
        "date": "19 Agustus 2024",
        "location": "Jakarta Pusat",
        "time": "08:00 - 10:00"
      },
      {
        "title": "Akar Ilmu Edukasi Terpadu",
        "date": "26 Agustus 2024",
        "location": "Jakarta Selatan",
        "time": "10:00 - 12:00"
      },
      {
        "title": "Kelas Inspirasi dan Pembelajaran",
        "date": "02 September 2024",
        "location": "Jakarta Timur",
        "time": "12:00 - 14:00"
      },
      {
        "title": "Komunitas Belajar Aktif Kreatif",
        "date": "09 September 2024",
        "location": "Jakarta Barat",
        "time": "14:00 - 16:00"
      },
      {
        "title": "Forum Cerdas Pengembangan Diri",
        "date": "16 September 2024",
        "location": "Kepulauan Seribu",
        "time": "16:00 - 18:00"
      }
    ]
  };

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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PelaporanPage())
          );
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
      body: SafeArea(
        child: Stack(
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
                            child: const Text(
                              "Aktivitas Populer",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.dkj,
                                fontWeight: FontWeight.bold,
                                fontSize: AppTextStyles.smallHeader,
                                fontFamily: AppTextStyles.fontFamilyPrimary
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
                                children: List.generate(
                                  _listPopularCommunity.length,
                                  (index){
                                    final communityCard155165 = _listPopularCommunity[index];
                                    return InkWell(
                                      onTap: (){
                                        Navigator.push(
                                          context, 
                                          MaterialPageRoute(builder: (context) => DetailCommunity(
                                            title: communityCard155165.title,
                                            time: communityCard155165.time,
                                            // price: ,
                                            // place: ,
                                            // person: ,
                                            location: communityCard155165.location,
                                            date: communityCard155165.date,
                                          ))
                                        );
                                      },
                                      child: communityCard155165,
                                    );
                                  }
                                )
                              ),
                            )
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.07,
                        ),
                        child: const Text(
                          "Aktivitas Lainnya",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.dkj,
                            fontSize: AppTextStyles.smallHeader,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppTextStyles.fontFamilyPrimary
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
                                onPressed: (){
                                  setState(() {
                                    _activeButton = "Olahraga";
                                  });
                                },
                                buttonText: 'Olahraga',
                                isActive: _activeButton == "Olahraga",
                                backgroundColor: AppColors.jakpus,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.015
                              ),
                              ButtonCategory(
                                onPressed: (){
                                  setState(() {
                                    _activeButton = "Sosial";
                                  });
                                },
                                buttonText: 'Sosial',
                                isActive: _activeButton == "Sosial",
                                backgroundColor: AppColors.jakut,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.015
                              ),
                              ButtonCategory(
                                buttonText: 'Seni',
                                onPressed: (){
                                  setState(() {
                                    _activeButton = "Seni";
                                  });
                                },
                                isActive: _activeButton == "Seni",
                                backgroundColor: AppColors.jakbar,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.015
                              ),
                              ButtonCategory(
                                buttonText: 'Budaya',
                                onPressed: (){
                                  setState(() {
                                    _activeButton = "Budaya";
                                  });
                                },
                                isActive: _activeButton == "Budaya",
                                backgroundColor: AppColors.jaktim,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.015
                              ),
                              ButtonCategory(
                                buttonText: 'Belajar',
                                onPressed: (){
                                  setState(() {
                                    _activeButton = "Belajar";
                                  });
                                },
                                isActive: _activeButton == "Belajar",
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
                        child: Column(
                          children: _buildListItems(),
                        )
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
      )
    );
  }

  List<Widget> _buildListItems() {
    final items = _listItems[_activeButton] ?? [];
    return items.asMap().entries.map((entry){
      final item = entry.value;
      return Column(
        children: [
            InkWell(
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => DetailCommunity(
                    title: item['title'],
                    date: item['date'],
                    time: item['time'],
                    location: item['location'],
                  )));
              },
              child: CommunityCard29561(
                title: item['title'],
                date: item['date'],
                time: item['time'],
                location: item['location'],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015
            ),
        ],
      );
    }).toList();
  }
}