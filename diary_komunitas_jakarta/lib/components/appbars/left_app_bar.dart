import 'package:flutter/material.dart';

class LeftAppBar extends StatelessWidget implements PreferredSize{
  final bool isBackButton;

  const LeftAppBar({
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
      title: SizedBox(
        height: AppBar().preferredSize.height,
        child: const Image(
          image: AssetImage("assets/images/logo_DKJ_black.png"),
          fit: BoxFit.fitHeight,
        ),
      ), 
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
  
  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}