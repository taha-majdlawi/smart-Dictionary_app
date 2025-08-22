
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomeScreenSearchTextFieldWidget extends StatelessWidget {
  const HomeScreenSearchTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white), // text color
      decoration: InputDecoration(
        hintText: "Search for a word",
        hintStyle: TextStyle(color: Colors.grey[400]),
        prefixIcon: Icon(IconlyLight.search, color: Colors.grey[400]),
        filled: true,
        fillColor: Color(0xFF1E1E1E), // dark background for field
        contentPadding: EdgeInsets.symmetric(vertical: 14.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
