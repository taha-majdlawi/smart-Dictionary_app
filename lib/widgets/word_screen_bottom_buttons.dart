
import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/widgets/custom_word_box_widget.dart';

class WordScreenBottomButtons extends StatelessWidget {
  const WordScreenBottomButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomWordBoxWidget(word: 'Explain with ai', onTap: () {}),
        CustomWordBoxWidget(word: 'Add to favorites', onTap: () {}),
      ],
    );
  }
}
