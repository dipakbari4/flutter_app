import 'package:flutter/material.dart';

void main() => runApp(MyApp()); // MyApp class


//The below class extends the StatelessWidget
class MyApp extends StatelessWidget {

  // Creating the single individual instance of MyApp class
  @override
  Widget build(BuildContext context) {
    // This will return the Material App to MyApp class
    return MaterialApp(
      home: Text("Let's start fluttering!",),
    );
  }

}