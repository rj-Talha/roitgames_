// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:roitgames_/main.dart';

class bottomAppBar extends StatefulWidget {
  const bottomAppBar({super.key});

  @override
  State<bottomAppBar> createState() => _bottomAppBarState();
}

class _bottomAppBarState extends State<bottomAppBar> {
  Color myColor = Colors.white;
  Color myColor1 = Colors.white;
  Color myColor2 = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Cookie Preferences',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
          ),
          Text(
            '|',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(width: 10),
          Text(
            '© 2024 Riot Games, Inc. All Rights Reserved.',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 10,
            ),
          ),
          Spacer(),
          TextButton(
            onHover: (value) {
              if (value) {
                setState(() {
                  myColor2 = Colors.red;
                });
              } else {
                setState(() {
                  myColor2 = Colors.white;
                });
              }
            },
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ),
              );
            },
            child: Row(
              children: [
                Text(
                  'TO THE SURFACE',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_drop_up,
                  color: myColor2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
