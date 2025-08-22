import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/widgets/title_text.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TitlesTextWidget(label: 'History Screen')),
    );
  }
}
