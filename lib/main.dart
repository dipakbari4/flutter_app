import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart'; // importing new library for experimenting

void main() => runApp(MyApp()); // MyApp class

//The below class extends the StatelessWidget
class MyApp extends StatelessWidget {
  final wordPair = WordPair.random(); // Getting the random strings
  final message = WordPair.random(); // Getting the random strings
  // Creating the single individual instance of MyApp class
  @override
  Widget build(BuildContext context) {
    // This will return the Material App to MyApp class
    return MaterialApp(
        home: new Scaffold(
          appBar: AppBar(
            title: Text(wordPair.asCamelCase),
          ),
          body: Center(
            child: Text(message.asPascalCase),
          ),
        )
    );
  }
}
