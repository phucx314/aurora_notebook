// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aurora_notebook/components/bottom_bar.dart';
import 'package:aurora_notebook/components/note_card.dart';
import 'package:aurora_notebook/components/notes_list.dart';
import 'package:aurora_notebook/components/search_bar.dart';
import 'package:flutter/material.dart';

import '../colors/dark_theme_color.dart';

class NotePage extends StatelessWidget {
  NotePage({super.key, });

  final NotesList notesList = NotesList();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: phxcPrimaryColorsD[950],
        body: SafeArea(
          child: Column(
            children: [
              // thanh tim kiem va menu
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: MySearchBar(
                        controller: TextEditingController(),
                        height: 40,
                        hintText: 'Search my notes',
                      ),
                    ),
                
                    SizedBox(width: 15,),
                
                    Container(
                      height: 40, width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: phxcPrimaryColorsD.shade800,
                      ),
                      child: IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.menu, color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),
          
              // list notes
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ListView.builder(
                    itemCount: notesList.notes.length,
                    itemBuilder: (context, index) {
                      final note = notesList.notes[index];
                      return NoteCard(
                        pictureURL: note['pictureURL']!,
                        title: note['title']!,
                        content: note['content']!,
                        date: note['date']!,
                      );
                    },
                  ),
                ),
              ),
              
              // bottom bar
              MyBottomBar(),
            ],
          ),
        ),
      )
    );
  }
}