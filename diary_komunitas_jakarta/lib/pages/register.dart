import 'package:diary_komunitas_jakarta/components/buttons/custom_btn_primary.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_text_styles.dart';
import 'package:diary_komunitas_jakarta/pages/beranda.dart';
import 'package:diary_komunitas_jakarta/pages/login.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );      
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.07,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    width: MediaQuery.of(context).size.width * 0.2,
                    "assets/images/logo_DKJ_black.png",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07
                  ),
                  const Text(
                    'Buat Akun',
                    style: TextStyle(
                      fontSize: AppTextStyles.header,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppTextStyles.fontFamilyPrimary,
                      color: AppColors.dkj
                    )
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          fontSize: AppTextStyles.label2,
                          fontFamily: AppTextStyles.fontFamilyPrimary,
                          color: AppColors.darkerGray,
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
                        labelText: 'Username',
                        labelStyle: const TextStyle(
                          fontSize: AppTextStyles.label2,
                          fontFamily: AppTextStyles.fontFamilyPrimary,
                          color: AppColors.darkerGray,
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
                          fontSize: AppTextStyles.label2,
                          fontFamily: AppTextStyles.fontFamilyPrimary,
                          color: AppColors.darkerGray,
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
                        MaterialPageRoute(
                          builder: (context) => const BerandaPage(), // Replace with your new page
                        ),
                      );     
                    }, 
                    buttonText: "Daftar", 
                    textColor: Colors.white, 
                    buttonColor: AppColors.dkj, 
                    borderColor: Colors.transparent, 
                    borderWidth: 0,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05
                  ),              
                  const Row(
                    children: <Widget>[
                      Expanded(
                          child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Atau lanjutkan dengan',
                          style: TextStyle(
                            color: AppColors.darkerGray,
                            fontSize: AppTextStyles.label2,
                            fontFamily: AppTextStyles.fontFamilyPrimary
                          ),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03
                  ),   
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.gray, 
                            width: 3
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 0),
                            )
                          ]
                        ),
                        child: SocialLoginButton(
                          imagePath: 'assets/images/meta.png',
                          onPressed: () {
                            
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.gray, 
                            width: 3
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 0),
                            )
                          ]
                        ),
                        child: SocialLoginButton(
                          imagePath: 'assets/images/google.png',
                          onPressed: () {
                            
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: AppColors.gray, 
                            width: 3
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 0),
                            )
                          ]
                        ),
                        child: SocialLoginButton(
                          imagePath: 'assets/images/apple.png',
                          onPressed: () {
                            
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03
                  ),   
                  const Text(
                    'Dengan menekan tombol buat, Anda setuju dengan ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppTextStyles.fontFamilyPrimary,
                      fontSize: AppTextStyles.label2,
                      color: AppColors.darkerGray
                    )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          _showTermsOfServiceDialog(context);
                        },
                        child: const Text(
                          'Terms of Service',
                          style: TextStyle(
                            color: AppColors.dkj,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.dkj,
                            decorationThickness: 1,
                            fontSize: AppTextStyles.label1,
                            fontFamily: AppTextStyles.fontFamilyPrimary
                          ),
                        ),
                      ),
                      const Text(' dan ',
                        style: TextStyle(
                            color: AppColors.darkerGray,
                            fontSize: AppTextStyles.label2,
                            fontFamily: AppTextStyles.fontFamilyPrimary
                          )
                        ),
                      GestureDetector(
                        onTap: () {
                          _showPrivacyPolicyDialog(context);
                        },
                        child: const Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: AppColors.dkj,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.dkj,
                            decorationThickness: 1,
                            fontSize: AppTextStyles.label1,
                            fontFamily: AppTextStyles.fontFamilyPrimary
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          )
        )
      ),
    );
  }
}

void _showTermsOfServiceDialog(BuildContext context) {
showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(12), 
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.description_outlined,
                    color: AppColors.dkj,
                    size: MediaQuery.of(context).size.width * 0.1,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  const Text(
                    'TERMS OF SERVICE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.dkj,
                      fontSize: AppTextStyles.header,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppTextStyles.fontFamilyPrimary
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              const Divider(
                height: 1, 
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: AppTextStyles.label3,
                          fontFamily: AppTextStyles.fontFamilyPrimary
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                      const Text(
                        "Lorem Ipsum",
                        style: TextStyle(
                          color: AppColors.dkj,
                          fontSize: AppTextStyles.subHeader,
                          fontFamily: AppTextStyles.fontFamilyPrimary,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.005),                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.lighterGray,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: AppTextStyles.label3,
                            fontFamily: AppTextStyles.fontFamilyPrimary
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin maximus finibus neque, eget iaculis nisi gravida eu. Cras malesuada tellus eget nunc tristique efficitur. Nullam sit amet nibh a dui lacinia vestibulum ac in mi. Vivamus tincidunt sed velit a tempor. Praesent placerat purus vel metus vulputate, quis consequat urna varius. Sed rhoncus nisl et arcu bibendum scelerisque. Vivamus pretium convallis condimentum. Integer ultricies, metus a tincidunt scelerisque, nibh nulla porttitor est, a tempor magna risus eu tortor. Fusce mollis est a neque facilisis, sit amet fermentum nunc egestas. Aliquam maximus purus eget ex gravida vehicula. Vivamus at enim malesuada, tristique sapien vitae, fermentum elit. Fusce egestas dui risus, ac laoreet justo ultricies et.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: AppTextStyles.label3,
                          fontFamily: AppTextStyles.fontFamilyPrimary
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.015
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: CustomButtonPrimary(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        buttonColor: Colors.white,
                        textColor: Colors.black,
                        buttonText: "Tolak",
                        borderColor: AppColors.dkj,
                        borderWidth: 1.5,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: CustomButtonPrimary(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        buttonColor: AppColors.dkj,
                        textColor: Colors.white,
                        buttonText: "Terima",
                        borderWidth: 0,
                        borderColor: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

void _showPrivacyPolicyDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(12), 
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.privacy_tip_outlined,
                    color: AppColors.dkj,
                    size: MediaQuery.of(context).size.width * 0.1,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  const Text(
                    'PRIVACY POLICY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.dkj,
                      fontSize: AppTextStyles.header,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppTextStyles.fontFamilyPrimary
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              const Divider(
                height: 1, 
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: AppTextStyles.label3,
                          fontFamily: AppTextStyles.fontFamilyPrimary
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                      const Text(
                        "Lorem Ipsum",
                        style: TextStyle(
                          color: AppColors.dkj,
                          fontSize: AppTextStyles.subHeader,
                          fontFamily: AppTextStyles.fontFamilyPrimary,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.005),                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.lighterGray,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: AppTextStyles.label3,
                            fontFamily: AppTextStyles.fontFamilyPrimary
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin maximus finibus neque, eget iaculis nisi gravida eu. Cras malesuada tellus eget nunc tristique efficitur. Nullam sit amet nibh a dui lacinia vestibulum ac in mi. Vivamus tincidunt sed velit a tempor. Praesent placerat purus vel metus vulputate, quis consequat urna varius. Sed rhoncus nisl et arcu bibendum scelerisque. Vivamus pretium convallis condimentum. Integer ultricies, metus a tincidunt scelerisque, nibh nulla porttitor est, a tempor magna risus eu tortor. Fusce mollis est a neque facilisis, sit amet fermentum nunc egestas. Aliquam maximus purus eget ex gravida vehicula. Vivamus at enim malesuada, tristique sapien vitae, fermentum elit. Fusce egestas dui risus, ac laoreet justo ultricies et.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: AppTextStyles.label3,
                          fontFamily: AppTextStyles.fontFamilyPrimary
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.015
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: CustomButtonPrimary(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        buttonColor: Colors.white,
                        textColor: Colors.black,
                        buttonText: "Tolak",
                        borderColor: AppColors.dkj,
                        borderWidth: 1.5,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      height: MediaQuery.of(context).size.height * 0.03,
                      child: CustomButtonPrimary(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        buttonColor: AppColors.dkj,
                        textColor: Colors.white,
                        buttonText: "Terima",
                        borderWidth: 0,
                        borderColor: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

class SocialLoginButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const SocialLoginButton({
    super.key,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Image.asset(
        imagePath,
        width: MediaQuery.of(context).size.width * 0.1,
        height: MediaQuery.of(context).size.width * 0.1,
      ),
    );
  }
}
