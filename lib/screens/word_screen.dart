import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/core/constants/app_text_styles.dart';
import 'package:smart_dictionary_app/widgets/antonyms_words_widget.dart';
import 'package:smart_dictionary_app/widgets/recent_search_words_widget.dart';
import 'package:smart_dictionary_app/widgets/synonyms_words_widget.dart';
import 'package:smart_dictionary_app/widgets/word_defintion_widget.dart';

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
              WordDefinintionWidget(),
              SizedBox(height: 28),

              Text('Synonyms', style: AppTextStyles.textStyle2),
              SizedBox(height: 28),
              SynonymsWordsWidget(),

              SizedBox(height: 28),

              Text('Antonyms', style: AppTextStyles.textStyle2),
              SizedBox(height: 28),
              AntonymsWordsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
