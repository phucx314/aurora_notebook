// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:aurora_notebook/colors/dark_theme_color.dart';
import 'package:flutter/material.dart';

class MyEditBottomBar extends StatefulWidget {
  const MyEditBottomBar({Key? key});

  @override
  State<MyEditBottomBar> createState() => _MyEditBottomBarState();
}

class _MyEditBottomBarState extends State<MyEditBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Bottom bar
        ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 50),
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                color: phxcPrimaryColorsD[800]?.withOpacity(0.1),
                border: Border(
                  top: BorderSide(
                    color: phxcPrimaryColorsD[50]!.withOpacity(0.1),
                    width: 1,
                  ),
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.image_rounded, color: Colors.white,),
                          ),
                          Text('Add image', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  // Expanded(child: SizedBox(width: 10)),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.draw_rounded, color: Colors.white,),
                          ),
                          Text('Draw', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.mic_rounded, color: Colors.white,),
                          ),
                          Text('Record', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.task_alt_rounded, color: Colors.white,),
                          ),
                          Text('Add task', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
