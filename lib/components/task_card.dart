// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../colors/dark_theme_color.dart';

class TaskCard extends StatelessWidget {
  const TaskCard(
      {super.key,
      required this.time,
      required this.isCompleted,
      required this.title});

  final String title;
  final String time;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        // height: 120,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: phxcPrimaryColorsD[800],
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // title va datetime
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // title
                  Text(
                    'Task Title',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
      
                  // datetime
                  Text(
                    'hh:mm • MMM dd, yyyy',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
      
              Row(
                children: [
                  // alarm icon
                  Icon(
                    Icons.alarm_rounded,
                    color: Colors.white,
                  ),
      
                  SizedBox(
                    width: 5,
                  ),
      
                  // checkbox icon
                  Icon(
                    Icons.check_box_outline_blank_rounded,
                    color: Colors.white54,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
