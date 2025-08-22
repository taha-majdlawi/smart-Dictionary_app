import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_dictionary_app/providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold();
  }
}
