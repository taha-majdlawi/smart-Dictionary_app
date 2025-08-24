import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/core/constants/app_text_styles.dart';

class ExampleSentenceWidget extends StatelessWidget {
  const ExampleSentenceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 2,
      'Flutter is a UI toolkit for building natively compiled applications.',
      style: AppTextStyles.textStyle4,
    );
  }
}
