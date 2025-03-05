import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  // CREATE VARIABLES HERE

  // CREATE TEXT EDITING CONTROLLER HERE

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
          title: Text(
            "Has Numbers",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              // CREATE TEXTFIELD TO INPUT TEXT

              // CREATE ELEVATED BUTTON TO DETERMINE IF TEXT HAS NUMBERS

              // CREATE CODE TO DISPLAY (TRUE/FALSE) IF TEXT HAS NUMBERS
            ],
          ),
        ),
      ),
    );
  }
}
