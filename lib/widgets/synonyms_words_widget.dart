import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/screens/word_screen.dart';
import 'package:smart_dictionary_app/widgets/custom_word_box_widget.dart';

class SynonymsWordsWidget extends StatelessWidget {
  const SynonymsWordsWidget({super.key});

  final List<String> synonyms = const [
    'Synonym',
    'Antonym',
    'Vocabulary',
    'Definition',
    'Phrase',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // fixed height for horizontal scroll
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: synonyms.length,
        itemBuilder: (context, index) {
          return CustomWordBoxWidget(
            word: synonyms[index],
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => WordScreen(word: synonyms[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
