import 'package:flutter/material.dart';

import 'my_switch.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const <Widget>[
        Text("Switch Theme"),
        MySwitch(),
      ],
    );
  }
}
