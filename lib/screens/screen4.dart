import 'package:flutter/material.dart';
import 'package:flutter_hw_7/models/converter.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen3State();
}

class _Screen3State extends State<Screen4> {
  // VARIABLES
  double oz = 0;
  double g = 0;
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
          title: Text(
            "Ounces to Grams",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.grey,
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
                    const Text("Ounces: ", style: TextStyle(fontSize: 18)),
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
                      oz = double.parse(_controller.text);
                      g = Converter.ounces_to_grams(oz);
                    });
                  },
                  child: const Text("Convert", style: TextStyle(fontSize: 18))),

              // DISPLAY METERS
              Padding(
                  padding: EdgeInsets.all(20),
                  child:
                      Text("Grams: ${g}", style: const TextStyle(fontSize: 18)))
            ],
          ),
        ),
      ),
    );
  }
}
