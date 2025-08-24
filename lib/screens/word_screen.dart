import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/core/constants/app_text_styles.dart';
import 'package:smart_dictionary_app/widgets/antonyms_words_widget.dart';
import 'package:smart_dictionary_app/widgets/example_sentence.dart';
import 'package:smart_dictionary_app/widgets/pronunciation_word_widget.dart';
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

              SizedBox(height: 32),

              Text('Antonyms', style: AppTextStyles.textStyle2),
              SizedBox(height: 28),
              AntonymsWordsWidget(),

              SizedBox(height: 32),
              Text('Example Sentence', style: AppTextStyles.textStyle2),
              SizedBox(height: 18),
              ExampleSentenceWidget(),

              SizedBox(height: 32),
              Text('Pronunciation', style: AppTextStyles.textStyle2),
              SizedBox(height: 12),
              PronunciationWidget(),
              SizedBox(height: 32),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18.0,
                          vertical: 12,
                        ),
                        child: Center(
                          child: Text(
                            'Explain with ai',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18.0,
                          vertical: 12,
                        ),
                        child: Center(
                          child: Text(
                            'Add to favorites',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E1E1E),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18.0,
                      vertical: 12,
                    ),
                    child: Center(
                      child: Text(
                        'Explain with ai',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
