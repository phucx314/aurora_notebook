// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aurora_notebook/components/home_bottom_bar.dart';
import 'package:aurora_notebook/components/note_card.dart';
import 'package:aurora_notebook/components/notes_list.dart';
import 'package:aurora_notebook/components/search_bar.dart';
import 'package:aurora_notebook/components/task_card.dart';
import 'package:flutter/material.dart';

import '../colors/dark_theme_color.dart';
import '../components/tasks_list.dart';

class TaskPage extends StatelessWidget {
  final TasksList tasksList = TasksList();

  TaskPage({super.key,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
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
                    itemCount: tasksList.sampleTasks.length,
                    itemBuilder: (context, index) {
                      final task = tasksList.sampleTasks[index];
                      return TaskCard(
                        time: task['dateTime']!,
                        isCompleted: false,
                        title: task['title']!,
                      );
                    },
                  ),
                ),
              ),

              // // pad so voi cai bottom bar va nut add (dua vao list)
              // SizedBox(height: 25 + 60 + 25,),
              
              // bottom bar
              MyBottomBar(),
            ],
          ),
        ),
      )
    );
  }
}