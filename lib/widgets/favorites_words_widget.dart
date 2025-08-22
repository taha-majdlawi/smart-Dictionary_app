
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/core/constants/app_colors.dart';

class FavoritesWordsWidget extends StatelessWidget {
  const FavoritesWordsWidget({super.key});

  final List<String> favoriteWords = const [
    'Algorithm',
    'Data Structure',
    'Recursion',
    'Polymorphism',
    'Abstraction',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // fixed height for horizontal scroll
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: favoriteWords.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.darkScaffoldColor,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: const Color.fromARGB(62, 255, 255, 255),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18.0,
                  vertical: 12,
                ),
                child: Center(
                  child: Text(
                    favoriteWords[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
    ;
  }
}
