import 'package:flutter/material.dart';
import 'package:intento_urbe/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({
    Key? key,
  }) : super(key: key);

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  var _switchValue = false;
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch(
      value: _switchValue,
      onChanged: (value) {
        setState(() {
          _switchValue = !_switchValue;
        });
        themeProvider.switchTheme(themeProvider.currentTheme);
      },
    );
  }
}
