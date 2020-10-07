import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SampleLayout1());

class SampleLayout1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SampleLayout1'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            _album(),
          ],
        ),
      ),
    );
  }
}

Widget _album() => Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Album Title",
                  style: TextStyle(fontSize: 36.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Album description goes here",
                  style: TextStyle(fontSize: 20.0),
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          Container(
            height: 300,
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network(
                "https://images.unsplash.com/photo-1601095601014-a2abd6e94ac3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
