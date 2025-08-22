import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_dictionary_app/providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          value: themeProvider.getIsDarkTheme,
          onChanged: (value) {
            themeProvider.setDarkTheme(themeValue: value);
          },
          title: Text(themeProvider.getIsDarkTheme ? 'Light' : 'Dark'),
        ),
      ),
    );
  }
}
