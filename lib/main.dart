import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'themes.dart';
import 'theme_manager.dart';
import 'home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => ThemeManager(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeManager>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Theme Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeManager.themeMode,
      home: const HomeScreen(),
    );
  }
}
