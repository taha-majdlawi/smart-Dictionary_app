import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/screens/word_screen.dart';

class CustomWordBoxWidget extends StatelessWidget {
  const CustomWordBoxWidget({
    super.key,
    required this.word,
    required this.onTap,
  });

  final String word;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1E1E1E),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
            child: Center(
              child: Text(
                word,
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
    );
  }
}
