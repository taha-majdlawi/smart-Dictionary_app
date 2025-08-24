import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/core/constants/app_text_styles.dart';

class PronunciationWidget extends StatelessWidget {
  const PronunciationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Pronunciation text', style: AppTextStyles.textStyle4),
        Icon(Icons.play_arrow_sharp, size: 32),
      ],
    );
  }
}
