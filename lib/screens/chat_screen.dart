import 'package:flutter/material.dart';
import 'package:smart_dictionary_app/core/constants/app_colors.dart';
import 'package:smart_dictionary_app/core/constants/app_text_styles.dart';
import 'package:smart_dictionary_app/widgets/chat_buble.dart';
import 'package:smart_dictionary_app/widgets/show_msegs_widget.dart';
import 'package:smart_dictionary_app/widgets/title_text.dart';

class ChatScreen extends StatelessWidget {
  @override
  String textFeildString = '';
  ScrollController scrollController = ScrollController();
  TextEditingController controller = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkScaffoldColor,
        title: Text('AI Chat', style: AppTextStyles.textStyle1),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ShowMsgsWidgets(scrollController: scrollController, messages: [],),
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              onChanged: (data) {
                textFeildString = data;
              },
              controller: controller,
              onSubmitted: (data) {
                // // to add msg to databasse
                // messages.add({
                //   kMessage: data,
                //   kCreatedAt: DateTime.now(),
                //   'id': currentUserEmail,
                // });
                controller.clear();
                _scrollToEnd();
              },
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Send Message',
                suffixIcon: IconButton(
                  onPressed: () {
                    // to add msg to databasse
                    // messages.add({
                    //   kMessage: textFeildString,
                    //   kCreatedAt: DateTime.now(),
                    //   'id': currentUserEmail,
                    // });

                    controller.clear();
                    _scrollToEnd();
                  },
                  icon: const Icon(Icons.send),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: AppColors.darkScaffoldColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: AppColors.darkScaffoldColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _scrollToEnd() {
    // Scroll to the bottom when new messages are added
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeIn,
    );
  }
}
