// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:aurora_notebook/colors/dark_theme_color.dart';
import 'package:aurora_notebook/components/edit_note_bottom_bar.dart';
import 'package:flutter/material.dart';

class NoteEditPage extends StatelessWidget {
  const NoteEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: phxcPrimaryColorsD[950],
        body: SafeArea(
          child: Column(
            children: [
              // navigation bar
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 15, left: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {}, 
                            icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,),
                          ),
                          Text(
                            'Back',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {}, 
                      icon: Icon(Icons.more_vert_rounded, color: Colors.white,),
                    ),
                  ],
                ),
              ),

              // note title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: TextEditingController(),
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Title goes here...',
                    hintStyle: TextStyle(
                      color: phxcPrimaryColorsD.shade700,
                      fontSize: 24,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: phxcPrimaryColorsD.shade500,
                      ),
                    ),
                  ),
                  cursorColor: phxcPrimaryColorsD.shade500,
                ),
              ),
              SizedBox(height: 10,),

              // note content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: TextEditingController(),
                    maxLines: null, // Allows the TextField to automatically wrap text and expand vertically
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Content goes here...',
                      hintStyle: TextStyle(
                        color: phxcPrimaryColorsD.shade700,
                        fontSize: 16,
                      ),
                      focusedBorder: InputBorder.none,
                      focusColor: Colors.transparent,
                      border: InputBorder.none,
                    ),
                    cursorColor: phxcPrimaryColorsD.shade500,
                  ),
                ),
              ),

              // undo redo va save button
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {}, 
                            icon: Icon(Icons.undo, color: Colors.white,),
                          ),
                          Text(
                            'Undo',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),
                          IconButton(
                            onPressed: () {}, 
                            icon: Icon(Icons.redo, color: Colors.white,),
                          ),
                          Text(
                            'Redo',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: TextButton(
                        onPressed: () {}, 
                        child: Text(
                          'Save',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: phxcPrimaryColorsD.shade500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),

              // bottom bar
              MyEditBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}