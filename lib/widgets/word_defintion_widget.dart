
import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/core/constants/app_text_styles.dart';

class WordDefinintionWidget extends StatelessWidget {
  const WordDefinintionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24),
        Text('Flutter', style: AppTextStyles.textStyle2),
        SizedBox(height: 18),
        Text('noun', style: AppTextStyles.textStyle3),
        SizedBox(height: 18),
        Text(
          maxLines: 2,
          'A UI toolkit for building natively compiled applications.',
          style: AppTextStyles.textStyle4,
        ),
      ],
    );
  }
}
