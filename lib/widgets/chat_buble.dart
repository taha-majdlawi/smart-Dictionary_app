import 'package:flutter/material.dart';

import 'package:smart_dictionary_app/core/constants/app_colors.dart';

class ChatBuble extends StatelessWidget {
  ChatBuble({super.key, required this.a});
  int a;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 87, 92, 95),
            width: .5,
          ),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(32),
            topLeft: Radius.circular(32),
            bottomLeft: Radius.circular(32),
          ),
          color: const Color(0xFF1E1E1E),
        ),
        child: Text(
          '  message.message $a',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class ChatBubleForFriend extends StatelessWidget {
  ChatBubleForFriend({Key? key, required this.a}) : super(key: key);
  int a;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(32),
            topLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
          color: const Color.fromARGB(255, 54, 52, 52),
        ),
        child: Text(
          ' message.message $a',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
