import 'package:diary_komunitas_jakarta/components/buttons/btn_category.dart';
import 'package:diary_komunitas_jakarta/components/cities_image.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:diary_komunitas_jakarta/pages/article.dart';
import 'package:diary_komunitas_jakarta/pages/community.dart';
import 'package:diary_komunitas_jakarta/pages/pelaporan.dart';
import 'package:diary_komunitas_jakarta/pages/profile.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../components/appbars/floating_navbar.dart';

class PillTextWidget extends StatelessWidget {
  final String category;

  const PillTextWidget({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text;
    Color backgroundColor;
    Color textColor;

    switch (category.toLowerCase()) {
      case 'kecelakaan':
        text = 'Kecelakaan';
        backgroundColor = AppColors.lighterGray;
        textColor = Colors.black;
        break;
      case 'bencana alam':
        text = 'Bencana Alam';
        backgroundColor = AppColors.lighterGray;
        textColor = Colors.black;
        break;
      case 'kemacetan':
        text = 'Kemacetan';
        backgroundColor = AppColors.lighterGray;
        textColor = Colors.black;
        break;
      default:
        text = category;
        backgroundColor = AppColors.lighterGray;
        textColor = Colors.black;
    }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.03,
        vertical: MediaQuery.of(context).size.height * 0.005
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            spreadRadius: 0.5,
            blurRadius: 2,
            color: Colors.black.withOpacity(0.15),
            offset: const Offset(0, 2)
          )
        ]
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: AppTextStyles.label3,
          fontFamily: AppTextStyles.fontFamilyPrimary,
        ),
      ),
    );
  }
}

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;
  final int _totalImages = 6;
  String _activeButton = 'Pusat';
  int _selectedIndex = 0;
  bool _isDropdownExpanded = false;

  final List<Widget> _imageAssets = [
    CityImage(
      cityName: "Jakarta Pusat", 
      assetImage: "assets/images/carousel1.png", 
      startColor: AppColors.jakpus.withOpacity(0.8), 
      endColor: Colors.transparent
    ),
    CityImage(
      cityName: "Jakarta Utara", 
      assetImage: "assets/images/carousel2.jpg", 
      startColor: AppColors.jakut.withOpacity(0.8), 
      endColor: Colors.transparent
    ),
    CityImage(
      cityName: "Jakarta Barat", 
      assetImage: "assets/images/carousel3.jpg", 
      startColor: AppColors.jakbar.withOpacity(0.8), 
      endColor: Colors.transparent
    ),
    CityImage(
      cityName: "Jakarta Timur", 
      assetImage: "assets/images/carousel4.png", 
      startColor: AppColors.jaktim.withOpacity(0.8), 
      endColor: Colors.transparent
    ),
    CityImage(
      cityName: "Jakarta Selatan", 
      assetImage: "assets/images/carousel5.jpg", 
      startColor: AppColors.jaksel.withOpacity(0.8), 
      endColor: Colors.transparent
    ),
    CityImage(
      cityName: "Kepulauan Seribu", 
      assetImage: "assets/images/carousel6.jpg", 
      startColor: AppColors.kepSeribu.withOpacity(0.8), 
      endColor: Colors.transparent
    ),

  ];

 final Map<String, List<Map<String, dynamic>>> _listItems = {
    'Pusat': [
      {
        'title': 'Kemacetan di Jalan Thamrin',
        'subtitle':
            'Terjadi kemacetan padat merayap akibat demo di depan gedung DPR. Disarankan mencari jalur alternatif.',
        'category': 'Kemacetan',
        'color' : AppColors.jakpus
      },
      {
        'title': 'Kecelakaan di Bundaran HI',
        'subtitle':
            'Kecelakaan melibatkan dua kendaraan di Bundaran HI. Petugas sedang menangani di lokasi.',
        'category': 'Kecelakaan',
        'color' : AppColors.jakpus
      },
      {
        'title': 'Banjir di Tanah Abang',
        'subtitle':
            'Banjir setinggi 50 cm di beberapa titik Tanah Abang. Kendaraan disarankan untuk menghindari area tersebut.',
        'category': 'Bencana Alam',
        'color' : AppColors.jakpus
      },
    ],
    'Utara': [
      {
        'title': 'Kepadatan di Pelabuhan Tanjung Priok',
        'subtitle':
            'Terjadi antrean panjang kendaraan menuju Pelabuhan Tanjung Priok. Diimbau untuk berangkat lebih awal.',
        'category': 'Kemacetan',
        'color' : AppColors.jakut
      },
      {
        'title': 'Kecelakaan di Jalan Yos Sudarso',
        'subtitle':
            'Kecelakaan tunggal terjadi di Jalan Yos Sudarso. Lalu lintas tersendat, harap berhati-hati.',
        'category': 'Kecelakaan',
        'color' : AppColors.jakut
      },
      {
        'title': 'Banjir Rob di Muara Baru',
        'subtitle':
            'Banjir rob setinggi 30 cm melanda kawasan Muara Baru. Warga diminta waspada.',
        'category': 'Bencana Alam',
        'color' : AppColors.jakut
      },
    ],
    'Barat': [
      {
        'title': 'Banjir di Cengkareng',
        'subtitle':
            'Banjir setinggi 30 cm di beberapa ruas jalan Cengkareng. Pengendara diminta untuk waspada.',
        'category': 'Bencana Alam',
        'color' : AppColors.jakbar
      },
      {
        'title': 'Kecelakaan di Tol Kebon Jeruk',
        'subtitle':
            'Terjadi kecelakaan beruntun di Tol Kebon Jeruk. Lalu lintas tersendat hingga 2 km.',
        'category': 'Kecelakaan',
        'color' : AppColors.jakbar
      },
      {
        'title': 'Kemacetan di Glodok',
        'subtitle':
            'Pasar tumpah di area Glodok menyebabkan kemacetan. Disarankan mencari rute alternatif.',
        'category': 'Kemacetan',
        'color' : AppColors.jakbar
      },
    ],
    'Timur': [
      {
        'title': 'Perbaikan Jembatan Kalimalang',
        'subtitle':
            'Sedang dilakukan perbaikan Jembatan Kalimalang. Lalu lintas dialihkan ke jalan paralel.',
        'category': 'Kemacetan',
        'color' : AppColors.jaktim
      },
      {
        'title': 'Kecelakaan di Jalan Raya Bekasi',
        'subtitle':
            'Kecelakaan melibatkan truk dan motor di Jalan Raya Bekasi. Lalu lintas padat, harap berhati-hati.',
        'category': 'Kecelakaan',
        'color' : AppColors.jaktim
      },
      {
        'title': 'Banjir di Cipinang',
        'subtitle':
            'Banjir setinggi 40 cm di beberapa titik Cipinang. Kendaraan disarankan untuk mencari jalur alternatif.',
        'category': 'Bencana Alam',
        'color' : AppColors.jaktim
      },
    ],
    'Selatan': [
      {
        'title': 'Kemacetan di Blok M',
        'subtitle':
            'Terjadi kemacetan padat di area Blok M akibat penutupan sebagian jalan untuk renovasi trotoar.',
        'category': 'Kemacetan',
        'color' : AppColors.jaksel
      },
      {
        'title': 'Pohon Tumbang di Jagakarsa',
        'subtitle':
            'Sebuah pohon besar tumbang di Jalan Jagakarsa. Tim dari Dinas Pertamanan sedang dalam proses evakuasi.',
        'category': 'Bencana Alam',
        'color' : AppColors.jaksel
      },
      {
        'title': 'Kecelakaan di Tol TB Simatupang',
        'subtitle':
            'Terjadi kecelakaan di Tol TB Simatupang arah Cilandak. Disarankan untuk berangkat lebih awal.',
        'category': 'Kecelakaan',
        'color' : AppColors.jaksel
      },
    ],
  };

  String _selectedCategory = 'Tempat';
  final List<String> _categories = ['Tempat', 'Makanan', 'Liburan', 'Lainnya'];

  final Map<String, List<Map<String, dynamic>>> _categoryItems = {
    'Tempat': [
      {
        'title': 'Museum Sejarah Jakarta',
        'subtitle': 'Koleksi baru tentang era kolonial Belanda',
        'location': 'Kota Tua',
        'color' : AppColors.jakbar
      },
      {
        'title': 'Taman Impian Jaya Ancol',
        'subtitle': 'Wahana air baru "Tsunami Ride"',
        'location': 'Jakarta Utara',
        'color' : AppColors.jakut
      },
      {
        'title': 'RPTRA Kalijodo',
        'subtitle': 'Area skatepark yang baru direnovasi',
        'location': 'Jakarta Barat',
        'color' : AppColors.jakbar
      },
    ],
    'Makanan': [
      {
        'title': 'Nasi Goreng Kambing Kebon Sirih',
        'subtitle': 'Varian baru dengan bumbu rempah khas Timur Tengah',
        'location': 'Kebon Sirih',
        'color' : AppColors.jakpus
      },
      {
        'title': 'Sate Taichan Senayan',
        'subtitle': 'Menu baru sate taichan dengan saus matah',
        'location': 'Senayan',
        'color' : AppColors.jaksel
      },
      {
        'title': 'Bakmi GM',
        'subtitle': 'Bakmi ayam jamur dengan topping baru',
        'location': 'Berbagai cabang di Jakarta',
        'color' : AppColors.dkj
      },
    ],
    'Liburan': [
      {
        'title': 'Thousand Islands Getaway',
        'subtitle': 'Paket wisata 3 hari 2 malam ke Pulau Macan',
        'location': 'Kepulauan Seribu',
        'color' : AppColors.kepSeribu
      },
      {
        'title': 'Jakarta Night Tour',
        'subtitle': 'Tur malam hari mengunjungi landmark Jakarta',
        'location': 'Jakarta Pusat',
        'color' : AppColors.jakpus
      },
      {
        'title': 'Ragunan Zoo Safari',
        'subtitle': 'Pengalaman safari malam di Kebun Binatang Ragunan',
        'location': 'Jakarta Selatan',
        'color' : AppColors.jaksel
      },
    ],
    'Lainnya': [
      {
        'title': 'Jakarta Fashion Week',
        'subtitle': 'Pameran busana terbesar se-Asia Tenggara',
        'location': 'Senayan City',
        'color' : AppColors.jakpus
      },
      {
        'title': 'Jakarta International Java Jazz Festival',
        'subtitle': 'Festival musik jazz tahunan',
        'location': 'JIExpo Kemayoran',
        'color' : AppColors.jakut
      },
      {
        'title': 'Jakarta Marathon',
        'subtitle': 'Lomba lari maraton internasional',
        'location': 'Berbagai rute di Jakarta',
        'color' : AppColors.dkj
      },
    ],
  };

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(
      const Duration(seconds: 3), (Timer timer) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
      switch(index){
        case 0:
          break;
        case 1:
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => const ArticlePage())
          );
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        title: Center(
          child: Image.asset(
            'assets/images/logo_DKJ_black.png',
            height: AppBar().preferredSize.height,
            fit: BoxFit.contain,
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.015
                    ),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.07,
                            vertical: MediaQuery.of(context).size.height * 0.01
                          ),
                          child: const Text(
                            'Hai, Jakartans',
                            style: TextStyle(
                              color: AppColors.dkj,
                              fontSize: AppTextStyles.header,
                              fontWeight: FontWeight.bold,
                              fontFamily: AppTextStyles.fontFamilyPrimary,
                            ),
                          ),
                        ),
                        // Container(
                        //   height: MediaQuery.of(context).size.height * 0.2,
                        //   padding: EdgeInsets.symmetric(
                        //     horizontal: MediaQuery.of(context).size.width * 0.07
                        //   ),
                        //   child: PageView.builder(
                        //     controller: _pageController,
                        //     onPageChanged: (int page) {
                        //       setState(() {
                        //         _currentPage = page % _totalImages;
                        //       });
                        //     },
                        //     itemBuilder: (context, index) {
                        //       final imageIndex = index % _totalImages;
                        //       return _imageAssets[imageIndex];
                        //     },
                        //   ),
                        // ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: List.generate(
                        //     _totalImages,
                        //     (index) => Container(
                        //       width: (MediaQuery.of(context).size.width * 0.8) / _totalImages,
                        //       height: MediaQuery.of(context).size.height * 0.005,
                        //       color: _currentPage == index ?AppColors.dkj: AppColors.gray,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.015
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.07
                          ),
                          child: const Text(
                            'Lalu Lintas',
                            style: TextStyle(
                              color: AppColors.dkj,
                              fontSize: AppTextStyles.smallHeader,
                              fontWeight: FontWeight.bold,
                              fontFamily: AppTextStyles.fontFamilyPrimary,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width * 0.07,
                              vertical: MediaQuery.of(context).size.height * 0.01
                            ),
                            child: Row(
                              children: [
                                ButtonCategory(
                                  onPressed: (){
                                    setState(() {
                                      _activeButton = "Pusat";
                                    });
                                  },
                                  buttonText: "Pusat", 
                                  backgroundColor: AppColors.jakpus, 
                                  isActive: _activeButton == "Pusat",
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.015
                                ),                      
                                ButtonCategory(
                                  onPressed: (){
                                    setState(() {
                                      _activeButton = "Utara";
                                    });
                                  },
                                  buttonText: "Utara", 
                                  backgroundColor: AppColors.jakut, 
                                  isActive: _activeButton == "Utara",
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.015
                                ),      
                                ButtonCategory(
                                  onPressed: (){
                                    setState(() {
                                      _activeButton = "Barat";
                                    });
                                  },
                                  buttonText: "Barat", 
                                  backgroundColor: AppColors.jakbar, 
                                  isActive: _activeButton == "Barat",
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.015
                                ),      
                                ButtonCategory(
                                  onPressed: (){
                                    setState(() {
                                      _activeButton = "Timur";
                                    });
                                  },
                                  buttonText: "Timur", 
                                  backgroundColor: AppColors.jaktim, 
                                  isActive: _activeButton == "Timur",
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.015
                                ),      
                                ButtonCategory(
                                  onPressed: (){
                                    setState(() {
                                      _activeButton = "Selatan";
                                    });
                                  },
                                  buttonText: "Selatan", 
                                  backgroundColor: AppColors.jaksel, 
                                  isActive: _activeButton == "Selatan",
                                ),
                              ],
                            ),
                          )
                      ),
                      ..._buildListItems(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.07,
                      vertical: MediaQuery.of(context).size.height * 0.015
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Yang Baru di Jakarta!',
                          style: TextStyle(
                            color: AppColors.dkj,
                            fontSize: AppTextStyles.smallHeader,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppTextStyles.fontFamilyPrimary,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.01
                          ),
                          child: _buildCustomDropdown()
                        ),
                        ..._buildCategoryItems(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15
                  ),
                ],
              ),
            ),
            FloatingBottomNavBar(
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            ),
          ],
        ),
      )
    );
  }

 List<Widget> _buildListItems() {
    return [
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.07
        ),
        child: Container(
          padding: EdgeInsets.all(
            MediaQuery.of(context).size.width * 0.02,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Column(
            children: _listItems[_activeButton]?.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;
              return Padding (padding: EdgeInsets.all(
                  MediaQuery.of(context).size.width * 0.03
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                          child: Text(
                            '${index + 1}',
                            style: const TextStyle(
                              color: AppColors.dkj,
                              fontSize: AppTextStyles.label1,  
                              fontFamily: AppTextStyles.fontFamilyPrimary,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PillTextWidget(
                                category: item['category'] ?? 'Lainnya'
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.01,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['title']!,
                                    style: const TextStyle(
                                      fontSize: AppTextStyles.label1,  
                                      fontWeight: FontWeight.bold,
                                      fontFamily: AppTextStyles.fontFamilyPrimary,
                                    ),
                                  ),
                                  Text(
                                    item['subtitle']!,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      color: AppColors.darkerGray,
                                      fontSize: AppTextStyles.label3,
                                      fontFamily: AppTextStyles.fontFamilyPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.025,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.location_on, 
                              color: item['color']!, 
                              size: MediaQuery.of(context).size.width * 0.05
                            ),
                            Text(
                              _activeButton,
                              style: TextStyle(
                                color: item['color']!,
                                fontSize: AppTextStyles.label4,
                                fontFamily: AppTextStyles.fontFamilyPrimary,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              );
            }).toList() ?? [],
          ),
        ),
      )
    ];
  }

  List<Widget> _buildCategoryItems() {
    return _categoryItems[_selectedCategory]
      ?.map((item) => Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.009
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 1),
              )
            ]
          ),
          child: Padding(
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.width * 0.03
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['title']!,
                  style: const TextStyle(
                    fontSize: AppTextStyles.label1,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppTextStyles.fontFamilyPrimary,
                  ),
                ),
                Text(
                  item['subtitle']!,
                  style: const TextStyle(
                    fontSize: AppTextStyles.label3,
                    color: AppColors.darkerGray,
                    fontFamily: AppTextStyles.fontFamilyPrimary,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: item['color']!, 
                      size: MediaQuery.of(context).size.width * 0.04
                    ),
                    Text(
                      item['location']!,
                      style: TextStyle(
                        fontSize: AppTextStyles.label4,
                        color: item['color']!,
                        fontFamily: AppTextStyles.fontFamilyPrimary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    ).toList() ?? [];
  }

 Widget _buildCustomDropdown() {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isDropdownExpanded = !_isDropdownExpanded;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03, 
              vertical: MediaQuery.of(context).size.height * 0.01
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.lighterGray,
                boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(_selectedCategory),
                Icon(
                  _isDropdownExpanded
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down,
                  color: AppColors.lighterGray
                ),
              ],
            ),
          ),
        ),
        if (_isDropdownExpanded)
          Container(
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: _categories.map((String category) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectedCategory = category;
                      _isDropdownExpanded = false;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.03, 
                      vertical: MediaQuery.of(context).size.height * 0.01
                    ),
                    decoration: BoxDecoration(
                      color: _selectedCategory == category
                          ? AppColors.lighterGray
                          : Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: category != _categories.last
                              ? AppColors.lighterGray
                              : Colors.transparent,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(category),
                        if (_selectedCategory == category)
                          const Icon(
                            Icons.check, 
                            color: AppColors.dkj
                          ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}
