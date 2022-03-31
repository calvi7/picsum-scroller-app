import 'package:flutter/material.dart';
import 'package:picsum_scroller_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        const Text("Switch Theme"),
        Switch(
          value: themeProvider.switchValue,
          onChanged: (_) {
            themeProvider.switchTheme(themeProvider.currentTheme);
          },
        )
      ],
    );
  }
}
