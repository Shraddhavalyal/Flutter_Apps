import "dart:ffi";

import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tiranga"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 5,
                    height: 250,
                    color: Colors.black,
                    alignment: Alignment.center,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 220,
                    height: 35,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 220,
                    height: 35,
                    color: Colors.white,
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAhp3uwmArwSIyCtP5tO5ZFvP3YSZ20phEXw&s"),
                  ),
                  Container(
                    width: 220,
                    height: 35,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}