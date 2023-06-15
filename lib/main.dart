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
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Title"),
          ),
          body: Column(
            children: [

              Center(child: Text("$count ")),
              Center(
                child: ElevatedButton(
                  child: Text("+"),
                  onPressed: () {
                    count++;
                    setState(() {});
                    print("I was pressed $count");
                  },
                ),
              ),
              ElevatedButton(
                child: Text("-"),
                onPressed: () {
                  count--;
                  setState(() {});
                  print("I was pressed $count");
                },
              ),
            ],
          )),
    );
  }
}
