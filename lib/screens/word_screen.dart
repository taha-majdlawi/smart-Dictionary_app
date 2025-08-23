import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/core/constants/app_text_styles.dart';
import 'package:smart_dictionary_app/widgets/recent_search_words_widget.dart';

class WordScreen extends StatelessWidget {
  const WordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Word Screen', style: AppTextStyles.textStyle1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              Text('Flutter', style: AppTextStyles.textStyle2),
              SizedBox(height: 12),
              Text('noun', style: AppTextStyles.textStyle3),
              SizedBox(height: 12),
              Text(
                maxLines: 2,
                'A UI toolkit for building natively compiled applications.',
                style: AppTextStyles.textStyle4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
