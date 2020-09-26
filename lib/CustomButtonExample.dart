import 'package:flutter/material.dart';

void main() => runApp(CustomButtonExample());

class CustomButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(
        title: 'Custom Button Example',
      ),
    );
  }
}

class Home extends StatefulWidget {
  final String title;
  Home({Key key, this.title}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CustomButton("Custom Button"),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;

  CustomButton(this.title);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => {print("Hello")},
      child: Text(title),
    );
  }
}
