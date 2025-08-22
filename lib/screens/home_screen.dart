import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:smart_dictionary_app/core/constants/app_colors.dart';
import 'package:smart_dictionary_app/core/constants/app_text_styles.dart';
import 'package:smart_dictionary_app/providers/theme_provider.dart';
import 'package:smart_dictionary_app/widgets/home-screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeProvider.getIsDarkTheme
            ? AppColors.darkScaffoldColor
            : AppColors.lightCardColor,
        title: Text('Lexi', style: AppTextStyles.textStyle1),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(IconlyLight.setting, size: 28),
          ),
        ],
      ),
      body: HomeScreenBody(),
    );
  }
}
