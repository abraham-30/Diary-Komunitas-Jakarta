import 'package:flutter/material.dart';

class CenteredAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBackButton;

  const CenteredAppBar({
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
      title: Container(
        height: AppBar().preferredSize.height,
        child: const Image(
          image: AssetImage("assets/images/logo_DKJ_black.png"),
          fit: BoxFit.fitHeight,
        ),
      ),        
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.settings),
          color: Colors.black,
          onPressed: () {

          },
        ),
      ],
    );
  }
}