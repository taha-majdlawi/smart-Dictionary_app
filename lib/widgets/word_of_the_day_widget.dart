import 'package:flutter/material.dart';

class WordOfTheDayWidget extends StatelessWidget {
  const WordOfTheDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 54, 52, 52),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 12,
              ),
              child: Center(
                child: Text(
                  'Flutter',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          maxLines: 2,
          'A UI toolkit for building natively compiled applications.',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 18,

            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
