import 'package:flutter/material.dart';
import 'package:intento_urbe/providers/models/user_model.dart';

class DrawerHeaderUserCard extends StatelessWidget {
  final User user;

  const DrawerHeaderUserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(user.profilePhotoPath),
            radius: 40,
          ),
          const SizedBox(height: 10),
          Text(
            user.name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ]));
  }
}
