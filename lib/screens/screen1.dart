import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  // CREATE VARIABLE TO KEEP TRACK OF COUNTER

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: const Text(
                "Increment",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.blue,
              centerTitle: true,
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  // CREATE CODE TO DISPLAY CURRENT COUNTER VALUE
                ]))
            // CREATE FLOATING ACTION BUTTON TO INCREMENT COUNTER

            ));
  }
}
