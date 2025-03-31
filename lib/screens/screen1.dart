import 'package:flutter/material.dart';
import 'package:flutter_hw_7/models/converter.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  // VARIABLES
  double feet = 0;
  double meters = 0;
  TextEditingController _controller = TextEditingController();

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
            children: [
              // TEXTFIELD TO INPUT FEET
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    const Text("Feet: ", style: TextStyle(fontSize: 18)),
                    const SizedBox(width: 10),
                    Expanded(
                      // Ensures the TextField takes up remaining space
                      child: TextField(
                        controller: _controller,
                      ),
                    ),
                  ],
                ),
              ),

              // ELEVATED BUTTON TO CONVERT FEET TO Meters
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      feet = double.parse(_controller.text);
                      meters = Converter.feet_to_meters(feet);
                    });
                  },
                  child: const Text("Convert", style: TextStyle(fontSize: 18))),

              // DISPLAY METERS
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Text("Meters: ${meters}",
                      style: const TextStyle(fontSize: 18)))
            ],
          ),
        ),
      ),
    );
  }
}
