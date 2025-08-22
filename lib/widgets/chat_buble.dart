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
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(32),
            topLeft: Radius.circular(32),
            bottomLeft: Radius.circular(32),
          ),
          color: AppColors.darkPrimary,
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
          color: Color.fromARGB(255, 193, 211, 224),
        ),
        child: Text(
          ' message.message $a',
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
