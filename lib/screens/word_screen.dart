import 'package:flutter/material.dart';

class WordScreen extends StatelessWidget {
  const WordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Word Screen'),
      ),
      body: const Center(
        child: Text('Word Details'),
      ),
    );
  }
}