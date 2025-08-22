import 'package:flutter/material.dart';

class RecentSearchesWordsWidget extends StatelessWidget {
  const RecentSearchesWordsWidget({super.key});



  
  final List<String> recentSearches = const [
    'Flutter',
    'Dart',
    'Provider',
    'State Management',
    'Widgets',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // fixed height for horizontal scroll
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recentSearches.length,
        itemBuilder: (context, index) {
          return Padding(
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
                    recentSearches[index],
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
  }
}
