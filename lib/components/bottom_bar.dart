import 'dart:ui';

import 'package:aurora_notebook/colors/dark_theme_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // backlight cho may cai icons
        Positioned(
          bottom: 0,
          left: 0,
          right: 200,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: phxcPrimaryColorsD[500],
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 200,
          right: 0,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: phxcPrimaryColorsD[800],
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),

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
                            icon: Icon(Icons.sticky_note_2_rounded, color: Colors.white,),
                          ),
                          Text('Notes', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
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
                            icon: Icon(Icons.task_alt_rounded, color: Colors.white,),
                          ),
                          Text('To-dos', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        // "Add" button
        Positioned(
          bottom: 90 + 25, // 90 la height cua bottom bar, 25 la khoang cach giua bottom bar va button
          left: (MediaQuery.of(context).size.width - (50 + 30)), // 30 la 1 nua cua width cua container, 50 la padding 2 ben
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: phxcPrimaryColorsD[500],
              boxShadow: [
                BoxShadow(
                  color: phxcPrimaryColorsD[500]!.withOpacity(0.5),
                  blurRadius: 10,
                  spreadRadius: -5,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.add, color: Colors.white, size: 40,),
            ),
          ),
        ),
      ],
    );
  }
}
