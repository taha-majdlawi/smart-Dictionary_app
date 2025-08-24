import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/screens/word_screen.dart';
import 'package:smart_dictionary_app/widgets/custom_word_box_widget.dart';

class RecentSearchesWordsWidget extends StatelessWidget {
  const RecentSearchesWordsWidget({super.key});

  final List<String> recentSearches = const [
    'Flutter',
    'Dart',
    'Provider',
    'State Management',
    'Widgets',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // fixed height for horizontal scroll
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recentSearches.length,
        itemBuilder: (context, index) {
          return CustomWordBoxWidget(
            word: recentSearches[index],
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => WordScreen(word: recentSearches[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
