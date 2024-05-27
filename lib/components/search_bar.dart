// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../colors/dark_theme_color.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
    required this.controller,
    required this.hintText,
    required this.height,
  });

  final TextEditingController controller;
  final String hintText;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: phxcPrimaryColorsD[800],
        borderRadius: BorderRadius.circular(height / 2),
      ),
      child: TextField(
        // onSubmitted
        controller: controller,
        style: TextStyle(
          color: Colors.white
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: phxcPrimaryColorsD.shade700,
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 10.5, horizontal: 15),
          suffixIcon: GestureDetector(
            // onPress
            child: Icon(Icons.search, color: Colors.white, size: 20)
          ),
        ),
      ),
    );
  }
}
