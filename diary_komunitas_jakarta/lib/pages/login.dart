import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
import 'package:diary_komunitas_jakarta/components/buttons/custom_btn_primary.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:diary_komunitas_jakarta/pages/beranda.dart';
import 'package:diary_komunitas_jakarta/pages/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.07,
                vertical: MediaQuery.of(context).size.width * 0.13
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    width: MediaQuery.of(context).size.width * 0.2,
                    "assets/images/logo_DKJ_black.png",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.18
                  ),
                  const Text(
                    'Masuk',
                    style: TextStyle(
                      fontSize: AppTextStyles.header,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppTextStyles.fontFamilyPrimary,
                      color: AppColors.dkj
                    )
                  ),
                  const Text(
                    'Masukkan Username dan Kata Sandi Anda',
                    style: TextStyle(
                      fontSize: AppTextStyles.label2,
                      fontWeight: FontWeight.normal,
                      fontFamily: AppTextStyles.fontFamilyPrimary,
                      color: Colors.black
                    )
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Username / Email',
                        labelStyle: const TextStyle(
                          color: AppColors.darkerGray,
                          fontFamily: AppTextStyles.fontFamilyPrimary,
                          fontSize: AppTextStyles.label2
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: AppColors.dkj,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: AppColors.gray,
                            width: 1,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.03, 
                        ),
                      )
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          color: AppColors.darkerGray,
                          fontFamily: AppTextStyles.fontFamilyPrimary,
                          fontSize: AppTextStyles.label2
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: AppColors.dkj,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: AppColors.gray,
                            width: 1,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.03, 
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  CustomButtonPrimary(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BerandaPage()),
                      );
                    },
                    buttonText: "Masuk",
                    textColor: Colors.white,
                    buttonColor: AppColors.dkj,
                    borderColor: Colors.transparent,
                    borderWidth: 0,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                      'Tidak punya akun? ',
                        style: TextStyle(
                          fontFamily: AppTextStyles.fontFamilyPrimary,
                          fontSize: AppTextStyles.label2,
                          color: AppColors.darkerGray,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => const RegisterPage(),
                              )
                          );
                        },
                        child: const Text(
                          'Daftar Disini',
                          style: TextStyle(
                            fontFamily: AppTextStyles.fontFamilyPrimary,
                            fontSize: AppTextStyles.label1,
                            fontWeight: FontWeight.bold,
                            color: AppColors.dkj,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.dkj,
                            decorationThickness: 1,
                          )
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        )
      ),
    );
  }
}
