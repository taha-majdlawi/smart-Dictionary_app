import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/core/constants/app_text_styles.dart';

class WordDefinintionWidget extends StatelessWidget {
  const WordDefinintionWidget({
    super.key,
    required this.word,
    required this.definition,
    required this.partOfSpeech,
  });
  final String word;
  final String definition;
  final String partOfSpeech;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24),
        Text(word, style: AppTextStyles.textStyle2),
        SizedBox(height: 18),
        Text(partOfSpeech, style: AppTextStyles.textStyle3),
        SizedBox(height: 18),
        Text(maxLines: 2, definition, style: AppTextStyles.textStyle4),
      ],
    );
  }
}
