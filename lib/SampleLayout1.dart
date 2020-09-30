import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SampleLayout1());

class SampleLayout1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
            _album(context),
          ],
        ),
      ),
    );
  }
}

Widget _album(BuildContext _context) => Card(
      child: Row(
        children: [
          Container(
            height: 600,
            width: 200,
            child: Image.network(
              "https://images.unsplash.com/photo-1601095601014-a2abd6e94ac3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
            ),
          ),
        ],
      ),
    );
