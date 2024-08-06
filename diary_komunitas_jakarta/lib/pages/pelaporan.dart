import 'package:diary_komunitas_jakarta/components/appbars/floating_navbar.dart';
import 'package:diary_komunitas_jakarta/components/appbars/left_app_bar.dart';
import 'package:diary_komunitas_jakarta/components/buttons/custom_btn_primary.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:diary_komunitas_jakarta/pages/article.dart';
import 'package:diary_komunitas_jakarta/pages/beranda.dart';
import 'package:diary_komunitas_jakarta/pages/community.dart';
import 'package:diary_komunitas_jakarta/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class PelaporanPage extends StatefulWidget {
  const PelaporanPage({super.key});

  @override
  _PelaporanPageState createState() => _PelaporanPageState();
}

class _PelaporanPageState extends State<PelaporanPage> {
  String? _selectedCategory;
  int _selectedIndex = 3;
  bool _isExpanded = false;

  final Duration _animationDuration =
      const Duration(milliseconds: 500);
  String? _filePath; 

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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0), 
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Formulir Pengaduan',
                      style: TextStyle(
                        fontSize: AppTextStyles.header,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF3520D), 
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildTextField(
                      label: 'Nama',
                      hintText: 'Nama',
                    ),
                    const SizedBox(height: 20),
                    _buildAnimatedDropdown(), 
                    const SizedBox(height: 20),
                    _buildDescriptionField(),
                    const SizedBox(height: 20),
                    _buildUploadField(),
                    const SizedBox(height: 30),
                    CustomButtonPrimary(
                      onPressed: (){}, 
                      buttonText: "Kirim", 
                      textColor: Colors.white, 
                      buttonColor: AppColors.dkj, 
                      borderColor: Colors.transparent,
                      borderWidth: 0,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15
                    ),
                  ],
                ),
              ),
            ),
            FloatingBottomNavBar(
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped
            )
          ],
        )
      )
    );
  }

  Widget _buildTextField({required String label, required String hintText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: AppTextStyles.label1,
            fontFamily: AppTextStyles.fontFamilyPrimary
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.005),
        SizedBox(
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.gray),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.gray),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.dkj),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        )
      ],
    );
  }  

  Widget _buildAnimatedDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Kategori Keluhan',
          style: TextStyle(
            color: Colors.black,
            fontSize: AppTextStyles.label1,
            fontFamily: AppTextStyles.fontFamilyPrimary
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.005),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  _selectedCategory ?? 'Kategori',
                  style: const TextStyle(
                    color: AppColors.darkerGray,
                    fontSize: AppTextStyles.label1,
                    fontFamily: AppTextStyles.fontFamilyPrimary
                  ),
                ),
                trailing: Icon(
                  _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
              ),
              AnimatedSize(
                duration: _animationDuration,
                curve: Curves.easeInOut, 
                child: _isExpanded
                    ? Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(10)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: <String>[
                            'Kategori 1',
                            'Kategori 2',
                            'Kategori 3'
                          ].map((String value) {
                            return ListTile(
                              title: Text(value),
                              onTap: () {
                                setState(() {
                                  _selectedCategory = value;
                                  _isExpanded =
                                      false; 
                                });
                              },
                            );
                          }).toList(),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDescriptionField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Deskripsi Keluhan',
          style: TextStyle(
            color: Colors.black,
            fontSize: AppTextStyles.label1,
            fontFamily: AppTextStyles.fontFamilyPrimary
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.005),
        SizedBox(
          child: TextField(
            maxLines: 5,
            decoration: InputDecoration(
              hintText: 'Deskripsi',
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.gray),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.gray),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.gray),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildUploadField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Unggah Gambar',
          style: TextStyle(
            color: Colors.black,
            fontSize: AppTextStyles.label1,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.005),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.gray),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: TextEditingController(
                      text: _filePath),
                  readOnly: true,
                  decoration: const InputDecoration(
                    hintText: 'Unggah Gambar',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10)
                  ),
                ),
              ),
              IconButton(
                onPressed: () async {
                  FilePickerResult? result =
                      await FilePicker.platform.pickFiles();

                  if (result != null) {
                    setState(() {
                      _filePath =
                          result.files.single.path;
                    });
                  }
                },
                icon: const Icon(
                  Icons.upload_file,
                  color: AppColors.darkerGray,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
