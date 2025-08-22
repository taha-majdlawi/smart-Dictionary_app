import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:smart_dictionary_app/core/constants/app_colors.dart';
import 'package:smart_dictionary_app/core/constants/app_text_styles.dart';
import 'package:smart_dictionary_app/providers/theme_provider.dart';
import 'package:smart_dictionary_app/widgets/favorites_words_widget.dart';
import 'package:smart_dictionary_app/widgets/home_screen_search_textFieldWidget.dart';
import 'package:smart_dictionary_app/widgets/recent_search_words_widget.dart';
import 'package:smart_dictionary_app/widgets/word_of_the_day_widget.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            HomeScreenSearchTextFieldWidget(),
            SizedBox(height: 28),
            Text('Recent Searches', style: AppTextStyles.textStyle2),
            SizedBox(height: 28),
            RecentSearchesWordsWidget(),
            SizedBox(height: 28),
            Text('Favorites', style: AppTextStyles.textStyle2),
            SizedBox(height: 28),
            FavoritesWordsWidget(),
            SizedBox(height: 32),
            Text('Word Of The Day', style: AppTextStyles.textStyle2),
            SizedBox(height: 25),

            WordOfTheDayWidget(),
          ],
        ),
      ),
    );
  }
}
