
import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/widgets/chat_buble.dart';
bool msg = false;
class ShowMsgsWidgets extends StatelessWidget {
  const ShowMsgsWidgets({
    super.key,
    required this.scrollController, required List<Map<String, dynamic>> messages,
  });

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        reverse: true,
        controller: scrollController,
        itemCount: 50,
        itemBuilder: (context, index) {
          msg = !msg;
          return msg
              ? ChatBuble(a: index + 1)
              : ChatBubleForFriend(a: index + 1);
        },
      ),
    );
  }
}
