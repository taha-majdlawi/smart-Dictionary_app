import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/screens/word_screen.dart';
import 'package:smart_dictionary_app/widgets/custom_word_box_widget.dart';

class SuggestionsWordsWidget extends StatelessWidget {
  const SuggestionsWordsWidget({super.key});

  final List<String> suggestions = const [
    'Dictionary',
    'Translation',
    'Synonyms',
    'Antonyms',
    'Vocabulary',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // fixed height for horizontal scroll
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          return CustomWordBoxWidget(
            word: suggestions[index],
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => WordScreen(word: suggestions[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
