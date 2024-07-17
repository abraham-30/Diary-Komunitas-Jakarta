import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
import 'package:diary_komunitas_jakarta/components/buttons/custom_btn_primary.dart';
import 'package:diary_komunitas_jakarta/pages/beranda.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.07,
              vertical: MediaQuery.of(context).size.height * 0.1,
            ),
            child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  width: MediaQuery.of(context).size.width * 0.25,
                  "assets/images/logo_DKJ_black.png",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07
                ),
                Text(
                  'Masuk',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.067,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PlusJakarta',
                    color: AppColors.dkj
                  )
                ),
                Text(
                  'Masukkan Username dan Kata Sandi Anda',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.043,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'PlusJakarta',
                    color: Colors.black
                  )
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: TextFormField(
                    style: const TextStyle(
                      fontFamily: 'PlusJakarta',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Username / Email',
                      hintText: 'Masukkan Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: AppColors.dkj, // Change border color here
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: AppColors.gray, // Change border color here
                          width: 1, // This specifies the border width
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
                    style: const TextStyle(
                      fontFamily: 'PlusJakarta',
                    ),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Masukkan Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: AppColors.dkj, // Change border color here
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: AppColors.gray, // Change border color here
                          width: 1, // This specifies the border width
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
                     Text(
                    'Tidak punya akun? ',
                      style: TextStyle(
                        fontFamily: 'PlusJakarta',
                        fontSize: MediaQuery.of(context).size.width * 0.043,
                        color: AppColors.darkerGray,
                      ),
                    ),
                    Text(
                      'Daftar Disini',
                      style: TextStyle(
                        fontFamily: 'PlusJakarta',
                        fontSize: MediaQuery.of(context).size.width * 0.043,
                        fontWeight: FontWeight.bold,
                        color: AppColors.dkj,
                        decoration: TextDecoration.underline
                      )
                    ),
                  ],
                ),
              ],
            ),
          ),
          )
        ),
      ),
    );
  }
}
