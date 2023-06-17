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
  int a = 0, b = 0, c = 0;
  int total = 0;
  String r1 = "", r2 = "";
  void solve() {
    double d = (b * b - 4 * a * c).toDouble();
    if (d >= 0) {
      d = sqrt(d);
      double root1 = (-b + d) / (2 * a);
      double root2 = (-b - d) / (2 * a);
      r1 = root1.toString();
      r2 = root2.toString();
    } else {
      d = sqrt(-d);
      String rp = (-b / (2 * a)).toString();
      String ip = (d / (2 * a)).toString();
      String root1 = "$rp + i x $ip";
      String root2 = "$rp - i x $ip";
      r1 = root1.toString();
      r2 = root2.toString();
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container"),
        ),
        body: Column(
          children: [
            Center(child: Text("Result = $r1 , $r2")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("A"),
                SizedBox(
                  width: 100,
                  child: TextField(
                    onChanged: (value) {
                      a = int.parse(value);
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("B"),
                SizedBox(
                  width: 100,
                  child: TextField(
                    onChanged: (value) {
                      b = int.parse(value);
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("C"),
                SizedBox(
                  width: 100,
                  child: TextField(
                    onChanged: (value) {
                      c = int.parse(value);
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  solve();
                },
                child: const Text("Solve")),
          ],
        ),
      ),
    );
  }
}
