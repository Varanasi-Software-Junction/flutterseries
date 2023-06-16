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
  int a = 0, b = 0;
  int total = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container"),
        ),
        body: Column(
          children: [
            Center(child: Text("Result = $total")),
            Center(
              child: SizedBox(
                width: 100,
                child: TextField(
                  onChanged: (value) {
                    a = int.parse(value);
                    print(value);
                  },
                ),
              ),
            ),
            SizedBox(
              width: 100,
              child: TextField(onChanged: (value) {
                print(value);
                b = int.parse(value);
              }),
            ),
            ElevatedButton(
                onPressed: () {
                  total = a + b;
                  setState(() {});
                },
                child: const Text("Add")),
          ],
        ),
      ),
    );
  }
}
