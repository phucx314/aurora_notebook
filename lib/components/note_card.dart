// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:aurora_notebook/colors/dark_theme_color.dart';
import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard(
      {super.key,
      this.pictureURL = 'khong_co_anh',
      required this.title,
      required this.content,
      required this.date});

  final String pictureURL;
  final String title;
  final String content;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: phxcPrimaryColorsD[800],
            borderRadius: BorderRadius.circular(20)),
        // neu ko co anh thi hien thi kieu card ko co anh, co anh thi nguoc lai
        child: (pictureURL == 'khong_co_anh') ? noImageLayout() : imageLayout(),
      ),
    );
  }

  Padding noImageLayout() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title content va date
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            content,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            date,
            style: TextStyle(
              color: Colors.white54,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  Padding imageLayout() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          // picture
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              pictureURL,
              width: (120 - 10) / 3 * 2,
              height: 120 - 10,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),

          // title content va date
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  content,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  date,
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
