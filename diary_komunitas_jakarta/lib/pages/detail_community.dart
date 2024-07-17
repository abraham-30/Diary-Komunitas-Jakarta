import 'package:diary_komunitas_jakarta/components/buttons/custom_btn_primary.dart';
import 'package:diary_komunitas_jakarta/custom_style/app_color.dart';
import 'package:diary_komunitas_jakarta/components/appbars/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailCommunity extends StatefulWidget {
  const DetailCommunity({super.key});

  @override
  State<DetailCommunity> createState() => _DetailCommunityState();
}

class _DetailCommunityState extends State<DetailCommunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        isBackButton: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 1,
                  child: const Image(
                    image: AssetImage("assets/images/color-run.png"),
                    fit: BoxFit.cover,
                  ),                  
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.white.withOpacity(1),
                        const Color.fromRGBO(178, 178, 178, 1).withOpacity(0.2),
                        const Color.fromRGBO(178, 178, 178, 1).withOpacity(0),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.265,
                  left: MediaQuery.of(context).size.width * 0.01,
                  right: MediaQuery.of(context).size.width * 0.01,
                  child: Padding(
                    padding:EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.05,
                      MediaQuery.of(context).size.height * 0.01,
                      MediaQuery.of(context).size.width * 0.05,
                      MediaQuery.of(context).size.height * 0.01
                    ),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                      style: TextStyle(
                        height: MediaQuery.of(context).size.height * 0.0013,
                        fontSize: MediaQuery.of(context).size.width * 0.067,
                        fontWeight: FontWeight.bold,
                        color: AppColors.dkj
                      )
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Padding(
                  padding:EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.07
                  ),
                  child: Padding(
                    padding:EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * 0.03
                              ),
                              child: Image.asset(
                                "assets/images/calendar.png"
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sabtu, 18 Mei 2024",
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width * 0.043,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                                Text(
                                  "10.30 - 11.30",
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width * 0.035,
                                    color: AppColors.darkerGray
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * 0.03
                              ),
                              child: Image.asset(
                              "assets/images/location.png"
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Adhiyaksa Club",
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width * 0.043,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                                Text(
                                  "Jalan Adhyaksa, Lebak Bulus, Jakarta Selatan",
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width * 0.035,
                                    color: AppColors.darkerGray
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * 0.03
                              ),
                              child: Image.asset(
                              "assets/images/community.png"
                              ),
                            ),
                            Text(
                              "joletothemoon",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width * 0.043,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * 0.03
                              ),
                              child: Image.asset(
                                "assets/images/price.png",
                              ),
                            ),
                            Text(
                              "125.000",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.043,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.07,
                        vertical: MediaQuery.of(context).size.height * 0.01,
                      ),
                      child: Text(
                        "Foto Komunitas",
                        style: TextStyle(
                          color: AppColors.dkj,
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.width * 0.057,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: 
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.07
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height * 0.17,
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: const Image(
                                  image: AssetImage("assets/images/color-run-image.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height * 0.17,
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: const Image(
                                  image: AssetImage("assets/images/color-run-image.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height * 0.17,
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: const Image(
                                  image: AssetImage("assets/images/color-run-image.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        )
                      )
                    )
                  ],
                ),
                Padding(
                  padding:EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.07,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.01
                        ), 
                        child: Text(
                        "Apa Yang Ada di Komunitas Ini?",
                        style: TextStyle(
                          color: AppColors.dkj,
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.width * 0.057,
                        ),
                      ),
                      ),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.035,
                            color: Colors.black
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                              text: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.",
                            ),
                          ]
                        )
                      )
                    ],
                  )
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.07,
                    MediaQuery.of(context).size.height * 0.03,
                    MediaQuery.of(context).size.width * 0.07,
                    MediaQuery.of(context).size.height * 0.03
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 4,
                          blurRadius: 4,
                          offset: const Offset(0, 0),
                        )
                      ]
                    ),
                    child: CustomButtonPrimary(
                      onPressed: (){}, 
                      buttonText: "Bergabung", 
                      textColor: Colors.white, 
                      buttonColor: AppColors.dkj, 
                      borderColor: Colors.transparent, 
                      borderWidth: 0
                    )
                  )
                )
              ],
            ),
          ],
        )
      )
    );
  }
}