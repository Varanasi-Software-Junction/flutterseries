import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("flutterapp"),
          backgroundColor: Colors.blueGrey,
        ),
        body: const Column(
          children: [
            Center(
              child: Image(
                image: NetworkImage("https://picsum.photos/250?image=9"),
              ),
            ),
            SizedBox(
              width: 100,
              child: Image(
                image: AssetImage("images/img.jpg"),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
