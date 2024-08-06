import 'package:diary_komunitas_jakarta/components/appbars/floating_navbar.dart';
import 'package:diary_komunitas_jakarta/components/article_banner.dart';
import 'package:diary_komunitas_jakarta/components/buttons/carousel_arrow.dart';
import 'package:diary_komunitas_jakarta/components/cards/latest_news_card.dart';
import 'package:diary_komunitas_jakarta/components/story/story_banner.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:diary_komunitas_jakarta/pages/beranda.dart';
import 'package:diary_komunitas_jakarta/pages/community.dart';
import 'package:diary_komunitas_jakarta/pages/detail_article.dart';
import 'package:diary_komunitas_jakarta/pages/pelaporan.dart';
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
  String _activeButton = 'Pusat';

  final List<Widget> _items =  [
    const LatestNewsCard(
      title: "Kemajuan Proyek Revitalisasi Monas: Apa yang Terbaru?",
      date: "12 August 2024",
      location: "Monas, Jakarta",
    ),
    const LatestNewsCard(
      title: "Penataan Taman Kota: Langkah Terbaru",
      date: "10 August 2024",
      location: "Kebayoran Baru, Jakarta",
    ),
    const LatestNewsCard(
      title: "Inovasi Transportasi Jakarta: Apa yang Baru?",
      date: "8 August 2024",
      location: "Gambir, Jakarta",
    ),
    const LatestNewsCard(
      title: "Pembangunan Gedung Perpustakaan Baru: Update Terbaru",
      date: "5 August 2024",
      location: "Menteng, Jakarta",
    ),
    const LatestNewsCard(
      title: "Festival Budaya Jakarta: Acara Mendatang",
      date: "3 August 2024",
      location: "Kuningan, Jakarta",
    ),
  ];

  final Map<String, List<Map<String, dynamic>>> _listItems = {
    "Pusat": [
      {
        "title": "Kemajuan Proyek Revitalisasi Monas: Apa yang Terbaru?"
      },
      {
        "title": "Dampak Pembukaan Pusat Seni dan Budaya Baru di Jakarta Pusat"
      },
      {
        "title": "Inisiatif Pemerintah untuk Mengatasi Kemacetan di Jakarta Pusat"
      },
      {
        "title": "Jakarta Pusat: Menyusuri Sejarah dan Keberagaman Budaya Kota Tua"
      },
      {
        "title": "Festival Kuliner Jakarta Pusat: Mencicipi Hidangan Tradisional dan Modern"
      },
      {
        "title": "Peningkatan Kualitas Layanan Publik di Jakarta Pusat: Apa yang Telah Dilakukan?"
      }
    ],
    "Utara": [
      {
        "title": "Pembangunan Infrastruktur Baru di Jakarta Utara: Dampaknya terhadap Ekonomi"
      },
      {
        "title": "Tanjung Priok: Proyek Pengembangan Pelabuhan dan Implikasinya untuk Jakarta Utara"
      },
      {
        "title": "Inovasi Teknologi dan Smart City di Jakarta Utara: Apa yang Diharapkan?"
      },
      {
        "title": "Menjelajahi Pantai dan Pulau-Pulau di Jakarta Utara: Destinasi Wisata Populer"
      },
      {
        "title": "Penanganan Banjir di Jakarta Utara: Upaya dan Solusi Terbaru"
      },
      {
        "title": "Jakarta Utara: Proyek Perumahan Baru dan Dampaknya pada Komunitas"
      }
    ],
    "Barat": [
      {
        "title": "Jakarta Barat: Acara Tahun Baru yang Tidak Boleh Dilewatkan"
      },
      {
        "title": "Pembangunan Perumahan dan Infrastruktur Baru di Jakarta Barat: Apa yang Terbaru?"
      },
      {
        "title": "Wisata Kuliner di Jakarta Barat: Tempat Makan dan Kafe Terbaik"
      },
      {
        "title": "Inisiatif Pendidikan Baru di Jakarta Barat: Pelatihan dan Program untuk Masyarakat"
      },
      {
        "title": "Kegiatan Sosial dan Komunitas di Jakarta Barat: Program Baru dan Dampaknya"
      },
      {
        "title": "Jakarta Barat: Perkembangan dan Inovasi dalam Bidang Kesehatan Masyarakat"
      }
    ],
    "Timur": [
      {
        "title": "Jakarta Timur: Proyek Infrastruktur Terbesar Tahun Ini"
      },
      {
        "title": "Inisiatif Lingkungan Jakarta Timur: Upaya Terbaru untuk Kebersihan dan Kesehatan"
      },
      {
        "title": "Festival Seni dan Budaya Jakarta Timur: Acara yang Wajib Dikunjungi"
      },
      {
        "title": "Perkembangan Sistem Transportasi di Jakarta Timur: Apa yang Telah Berubah?"
      },
      {
        "title": "Program Bantuan Sosial di Jakarta Timur: Apa yang Ditawarkan untuk Warga?"
      },
      {
        "title": "Peningkatan Fasilitas Publik di Jakarta Timur: Proyek-Proyek Baru yang Diharapkan"
      }
    ],
    "Selatan": [
      {
        "title": "Jakarta Selatan: Peluncuran Proyek Green City dan Dampaknya"
      },
      {
        "title": "Tempat Wisata Terbaik di Jakarta Selatan: Aktivitas dan Destinasi Populer"
      },
      {
        "title": "Tren Kuliner Jakarta Selatan: Kafe dan Restoran Baru yang Harus Dicoba"
      },
      {
        "title": "Peningkatan Kualitas Pendidikan di Jakarta Selatan: Sekolah dan Program Baru"
      },
      {
        "title": "Inovasi dalam Penanganan Kemacetan di Jakarta Selatan: Solusi Terbaru"
      },
      {
        "title": "Program Kesehatan dan Kesejahteraan di Jakarta Selatan: Apa yang Diterapkan?"
      }
    ],
    "Kp. Seribu": [
      {
        "title": "Ekowisata di Kepulauan Seribu: Destinasi Ramah Lingkungan untuk Liburan"
      },
      {
        "title": "Inisiatif Konservasi di Kepulauan Seribu: Upaya Menjaga Sumber Daya Alam"
      },
      {
        "title": "Kehidupan di Pulau-Pulau Kepulauan Seribu: Aktivitas dan Budaya Lokal"
      },
      {
        "title": "Pembukaan Resort Baru di Kepulauan Seribu: Apa yang Ditawarkan?"
      },
      {
        "title": "Penanganan Sampah di Kepulauan Seribu: Tantangan dan Solusi"
      },
      {
        "title": "Perkembangan Infrastruktur Wisata di Kepulauan Seribu: Proyek dan Implikasi"
      }
    ]
  };

  @override
  void initState(){
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
      viewportFraction: 1,
    );
  }

  void _nextCarousel() {
    if (_currentPage < _items.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousCarousel() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
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
                      vertical: MediaQuery.of(context).size.height * 0.01
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.07,
                          ),
                          child: const Text(
                            "Untuk Anda",
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
                          child: const Text(
                            "Berita Terbaru",
                            style: TextStyle(
                              color: AppColors.dkj,
                              fontWeight: FontWeight.bold,
                              fontSize: AppTextStyles.smallHeader,
                              fontFamily: AppTextStyles.fontFamilyPrimary
                            ),  
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.28,
                          // width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01
                            ),
                            child: Stack(
                              children: [
                                PageView.builder(
                                  itemCount: _items.length,
                                  controller: _pageController,
                                  onPageChanged: (int page) {
                                    setState(() {
                                      _currentPage = page;
                                    });
                                  },
                                  itemBuilder: (BuildContext context, int index) {
                                    return _items[index % _items.length];
                                  },
                                ),
                                ArrowButton(
                                  onPressed: _previousCarousel,
                                  icon: Icons.arrow_back,
                                  size: MediaQuery.of(context).size.width * 0.07,
                                  alignment: Alignment.centerLeft,
                                ),
                                ArrowButton(
                                  onPressed: _nextCarousel,
                                  icon: Icons.arrow_forward,
                                  size: MediaQuery.of(context).size.width * 0.07,
                                  alignment: Alignment.centerRight,
                                ),
                              ],
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
                                    setState(() {
                                      _activeButton = "Pusat";
                                    });
                                  },
                                  isActive: _activeButton == "Pusat",
                                  backgroundColor: AppColors.jakpus,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.015
                                ),
                                ButtonCategory(
                                  buttonText: 'Utara',
                                  onPressed: (){
                                    setState(() {
                                      _activeButton = "Utara";
                                    });
                                  },
                                  isActive: _activeButton == "Utara",
                                  backgroundColor: AppColors.jakut,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.015
                                ),
                                  ButtonCategory(
                                  buttonText: 'Barat',
                                  onPressed: (){
                                    setState(() {
                                      _activeButton = "Barat";
                                    });
                                  },
                                  isActive: _activeButton == "Barat",
                                  backgroundColor: AppColors.jakbar,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.015
                                ),
                                ButtonCategory(
                                  buttonText: 'Timur',
                                  onPressed: (){
                                    setState(() {
                                      _activeButton = "Timur";
                                    });
                                  },
                                  isActive: _activeButton == "Timur",
                                  backgroundColor: AppColors.jaktim,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.015
                                ),
                                ButtonCategory(
                                  buttonText: 'Selatan',
                                  onPressed: (){
                                    setState(() {
                                      _activeButton = "Selatan";
                                    });
                                  },
                                  isActive: _activeButton == "Selatan",
                                  backgroundColor: AppColors.jaksel,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.015
                                ),
                                ButtonCategory(
                                  buttonText: 'Kp. Seribu',
                                  onPressed: (){
                                    setState(() {
                                      _activeButton = "Kp. Seribu";
                                    });
                                  },
                                  isActive: _activeButton == "Kp. Seribu",
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
                            children: _buildListItems(),
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
                MaterialPageRoute(builder: (context) => DetailArticle(
                  title: item['title'],
                )));
            },                      
            child: ArticleBanner(
              title: item['title'],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02
          ),
        ],
      );
    }).toList();
  }
}