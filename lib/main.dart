import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
 class _MyAppState extends State<MyApp> {





    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[900],
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                _clearBoard();
              },
            )

          ],
          title: Text(
            'Tic Tac Toe',
            style: kCustomText(
                fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w800),
          ),
        ),
        backgroundColor: Colors.grey[900],
        body: Column(
          children: [
          
          ],
        ),
      );
    }

  kCustomText({required double fontSize, required Color color, required FontWeight fontWeight}) {}
 }

class _clearBoard {
}



