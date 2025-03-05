import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
            "Converter",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              // CREATE TEXTFIELD TO INPUT FEET

              // CREATE ELEVATED BUTTON TO CONVERT FEET TO YARDS

              // CREATE CODE TO DISPLAY YARDS
            ],
          ),
        ),
      ),
    );
  }
}
