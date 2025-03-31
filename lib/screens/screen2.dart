import 'package:flutter/material.dart';
import 'package:flutter_hw_7/models/converter.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  // VARIABLES
  double miles = 0;
  double km = 0;
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
            "Miles to Kilometers",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              // TEXTFIELD TO INPUT MILES
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    const Text("MILES: ", style: TextStyle(fontSize: 18)),
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
                      miles = double.parse(_controller.text);
                      km = Converter.miles_to_km(miles);
                    });
                  },
                  child: const Text("Convert", style: TextStyle(fontSize: 18))),

              // DISPLAY METERS
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Text("Kilometers: ${km}",
                      style: const TextStyle(fontSize: 18)))
            ],
          ),
        ),
      ),
    );
  }
}
