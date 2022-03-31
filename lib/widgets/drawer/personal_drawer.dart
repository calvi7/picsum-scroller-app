import 'package:flutter/material.dart';
import 'package:intento_urbe/providers/models/user_model.dart';

import 'drawer_user_card.dart';
import 'theme_switcher.dart';

class CustomizedDrawer extends StatelessWidget {
  static const User user = User(
      name: 'Marcos Calvi',
      profilePhotoPath:
          'https://www.jeancoutu.com/globalassets/revamp/photo/conseils-photo/20160302-01-reseaux-sociaux-profil/photo-profil_301783868.jpg');

  const CustomizedDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            child: DrawerHeaderUserCard(user: user),
          ),
          ThemeSwitcher(),
        ],
      ),
    );
  }
}
