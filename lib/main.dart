import 'package:flutter/material.dart';
import 'package:intento_urbe/providers/login_provider.dart';
import 'package:intento_urbe/providers/picsum_provider.dart';
import 'package:intento_urbe/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'presentation/home_page/home_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PicsumProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => LoginProvider(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Awesome Images',
      theme: themeProvider.currentTheme,
      home: const MyHomePage(title: 'Awesome Images'),
    );
  }
}
