
import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/core/constants/app_text_styles.dart';
import 'package:smart_dictionary_app/widgets/favorites_words_widget.dart';
import 'package:smart_dictionary_app/widgets/home_screen_search_textFieldWidget.dart';
import 'package:smart_dictionary_app/widgets/recent_search_words_widget.dart';
import 'package:smart_dictionary_app/widgets/suggestions_words_widget.dart';
import 'package:smart_dictionary_app/widgets/word_of_the_day_widget.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(   
      child: Padding(
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
            SizedBox(height: 25),
            Text('Suggestions', style: AppTextStyles.textStyle2),
            SizedBox(height: 25),
            SuggestionsWordsWidget(),
            SizedBox(height: 40), // bottom padding
          ],
        ),
      ),
    );
  }
}