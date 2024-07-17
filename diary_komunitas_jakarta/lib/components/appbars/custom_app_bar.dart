import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final bool isBackButton;

  const CustomAppBar({
    super.key,
    required this.isBackButton  
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,      
      automaticallyImplyLeading: isBackButton,
      leading: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Text(
            "Kembali",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.043,
              color: Colors.black
            ),
          )
        ],
      ),
      title: Row(
        children: [
          const Spacer(),
          SizedBox(
            height: AppBar().preferredSize.height,
            child: const Image(
              image: AssetImage("assets/images/logo_DKJ_black.png"),
              fit: BoxFit.fitHeight,
            ),
          ),  
        ],
      )
    );
  }
}