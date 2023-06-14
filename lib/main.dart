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
            Center(
              child: SizedBox(
                width: 500,
                height: 300,
                child: Image(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2015/11/19/21/10/glasses-1052010_640.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
