import 'package:diary_komunitas_jakarta/components/appbars/floating_navbar.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
import 'package:diary_komunitas_jakarta/components/buttons/custom_btn_primary.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:diary_komunitas_jakarta/pages/article.dart';
import 'package:diary_komunitas_jakarta/pages/beranda.dart';
import 'package:diary_komunitas_jakarta/pages/community.dart';
import 'package:diary_komunitas_jakarta/pages/login.dart';
import 'package:diary_komunitas_jakarta/pages/pelaporan.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final PageController _pageController = PageController();
  int _selectedIndex = 4;
  bool _isEditing = false;

  void _toggleEditing() {
    setState(() {
      _isEditing = !_isEditing;
    });
  }

  void _submitForm() {
    setState(() {
      _isEditing = false;
    });
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
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _pageController,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.07,
                  vertical: MediaQuery.of(context).size.height * 0.03
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Edit Profile',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.dkj,
                          fontSize: AppTextStyles.header,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppTextStyles.fontFamilyPrimary,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.015
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 0.3,
                          child: ClipOval(
                            child: Image.asset(
                              "assets/images/Bangudahbang.png",
                              fit: BoxFit.cover,
                            )
                          )
                        ),
                      ),
                      Visibility(
                        visible: !(_isEditing),
                        child: AnimatedPositioned(
                        duration: const Duration(
                          milliseconds: 300
                        ),
                        left: _isEditing ? MediaQuery.of(context).size.width : 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedOpacity(
                              duration: const Duration(
                                milliseconds: 300
                              ),
                              opacity: _isEditing ? 0.0 : 1.0,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.27,
                                height: MediaQuery.of(context).size.height * 0.03,
                                child: CustomButtonPrimary(
                                  onPressed: _toggleEditing,
                                  buttonText: "Edit",
                                  textColor: Colors.white,
                                  buttonColor: AppColors.dkj,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03
                            ),
                            AnimatedOpacity(
                              duration: const Duration(
                                milliseconds: 300
                              ),
                              opacity: _isEditing ? 0.0 : 1.0,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.27,
                                height: MediaQuery.of(context).size.height * 0.03,
                                child: CustomButtonPrimary(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const LoginPage(),
                                      ),
                                    );
                                  },
                                  buttonText: "Logout",
                                  textColor: Colors.white,
                                  buttonColor: AppColors.red,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.03
                        ),
                        child: Column(
                          children: [
                          const SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Detail Pribadi',
                              style: TextStyle(
                                color: AppColors.dkj,
                                fontSize: AppTextStyles.smallHeader,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppTextStyles.fontFamilyPrimary,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.005,
                          ),
                          Form(
                            child: Column(
                              children: [
                                Column(
                                  children:[
                                    const SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Nama Depan',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: AppTextStyles.fontFamilyPrimary,
                                          fontSize: AppTextStyles.label1,                                 
                                        ),
                                      ),
                                    ),  
                                    TextFormField(
                                      style: const TextStyle(
                                        fontFamily: AppTextStyles.fontFamilyPrimary,
                                      ),
                                      enabled: _isEditing,
                                      decoration: const InputDecoration(
                                        hintText: 'Metiu',
                                        hintStyle: TextStyle(
                                          fontSize: AppTextStyles.label1,
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: AppColors.dkj
                                          ),
                                        ),
                                        contentPadding: EdgeInsets.all(10)
                                      ),
                                    ),                        
                                  ]
                                ),            
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.015,
                                ),            
                                Column(
                                  children:[
                                    const SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Nama Tengah',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: AppTextStyles.label1,  
                                          fontFamily: AppTextStyles.fontFamilyPrimary                                
                                        ),
                                      ),
                                    ),  
                                    TextFormField(
                                      style: const TextStyle(
                                        fontFamily: AppTextStyles.fontFamilyPrimary,
                                      ),
                                      enabled: _isEditing,
                                      decoration: InputDecoration(
                                        hintText: 'Gustino',
                                        hintStyle: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width * 0.043,
                                        ),
                                        focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: AppColors.dkj
                                          ),
                                        ),
                                        contentPadding: const EdgeInsets.all(10)
                                      ),
                                    ),                        
                                  ]
                                ), 
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.015,
                                ),                                 
                                Column(
                                  children:[
                                    const SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Nama Belakang',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: AppTextStyles.label1,                                  
                                          fontFamily: AppTextStyles.fontFamilyPrimary,
                                        ),
                                      ),
                                    ),  
                                    TextFormField(
                                      style: const TextStyle(
                                        fontFamily: AppTextStyles.fontFamilyPrimary,
                                      ),
                                      enabled: _isEditing,
                                      decoration: const InputDecoration(
                                        hintText: 'Leviothniel',
                                        hintStyle: TextStyle(
                                          fontSize: AppTextStyles.label1,
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: AppColors.dkj
                                          ),
                                        ),
                                        contentPadding: EdgeInsets.all(10)
                                      ),
                                    ),                        
                                  ]
                                ),         
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.015,
                                ),     
                                Column(
                                  children:[
                                    const SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Alamat',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: AppTextStyles.label1,
                                          fontFamily: AppTextStyles.fontFamilyPrimary,
                                        ),
                                      ),
                                    ),  
                                    TextFormField(
                                      style: const TextStyle(
                                        fontFamily: AppTextStyles.fontFamilyPrimary,
                                      ),
                                      enabled: _isEditing,
                                      decoration: const InputDecoration(
                                        hintText: 'Jalan Senam No.45, Kec. Tanah Sareal, Kota Bogor',
                                        hintStyle: TextStyle(
                                          fontSize: AppTextStyles.label1,
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: AppColors.dkj
                                          ),
                                        ),
                                        contentPadding: EdgeInsets.all(10)
                                      ),
                                    ),                        
                                  ]
                                ),                        
                              ],
                            ),
                          ),
                          ],
                        ),   
                      ),
                      Column(
                        children: [
                        const SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Detail Akun',
                            style: TextStyle(
                              color: AppColors.dkj,
                              fontSize: AppTextStyles.smallHeader,
                              fontWeight: FontWeight.bold,
                              fontFamily: AppTextStyles.fontFamilyPrimary,
                            ),
                          ),
                        ),           
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.005,
                        ),
                        Form(
                          child: Column(
                            children: [
                              Column(
                                children:[
                                  const SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      'Username',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: AppTextStyles.label1,                    
                                        fontFamily: AppTextStyles.fontFamilyPrimary,
                                      ),
                                    ),
                                  ),  
                                  TextFormField(
                                    style: const TextStyle(
                                      fontFamily: AppTextStyles.fontFamilyPrimary,
                                    ),
                                    enabled: _isEditing,
                                    decoration: const InputDecoration(
                                      hintText: 'MetInoNiel',
                                      hintStyle: TextStyle(
                                        fontSize: AppTextStyles.label1,
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.dkj
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.all(10)
                                    ),
                                  ),                        
                                ]
                              ),       
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.015,
                              ),     
                              Column(
                                children:[
                                  const SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      'Password',
                                      style: TextStyle(
                                        fontFamily: 'PlusJakarta',
                                        fontSize: AppTextStyles.label1,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),  
                                  TextFormField(
                                    style: const TextStyle(
                                      fontFamily: 'PlusJakarta',
                                    ),
                                    enabled: _isEditing,
                                    decoration: const InputDecoration(
                                      hintText: '**********',
                                      hintStyle: TextStyle(
                                        fontSize: AppTextStyles.label1,
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.dkj
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.all(10)
                                    ),
                                  ),                        
                                ]
                              ), 
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.015,
                              ),     
                              Column(
                                children:[
                                  const SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      'Email',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: AppTextStyles.fontFamilyPrimary,
                                        fontSize: AppTextStyles.label1,
                                      ),
                                    ),
                                  ),  
                                  TextFormField(
                                    style: const TextStyle(
                                      fontFamily: AppTextStyles.fontFamilyPrimary,
                                    ),
                                    enabled: _isEditing,
                                    decoration: const InputDecoration(
                                      hintText: 'lorem.ipsum@binus.ac.id',
                                      hintStyle: TextStyle(
                                        fontSize: AppTextStyles.label1,
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.dkj
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.all(10)
                                    ),
                                  ),                        
                                ]
                              ),              
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.03,
                              ), 
                              Visibility(
                                visible: _isEditing,
                                child: AnimatedOpacity(
                                  duration: const Duration(milliseconds: 300),
                                  opacity: _isEditing ? 1.0 : 0.0,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.27,
                                        height: MediaQuery.of(context).size.height * 0.03,
                                        child: CustomButtonPrimary(
                                          onPressed: _toggleEditing,
                                          buttonColor: Colors.white,
                                          textColor: Colors.black,
                                          buttonText: "Cancel",
                                          borderColor: AppColors.dkj,
                                          borderWidth: 1.5,
                                        )
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.03
                                      ),                              
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.27,
                                        height: MediaQuery.of(context).size.height * 0.03,
                                        child: CustomButtonPrimary(
                                          onPressed: _submitForm,
                                          buttonColor: AppColors.dkj,
                                          textColor: Colors.white,
                                          buttonText: "Submit",
                                          borderWidth: 0,
                                          borderColor: Colors.transparent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.1
                              ),
                            ],
                          ),
                        )
                        ],
                      )
                    ],
                  ),
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
}
