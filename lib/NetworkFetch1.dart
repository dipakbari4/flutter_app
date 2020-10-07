import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(NetworkFetch1());

class NetworkFetch1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  // @override
  // _HomeState createState() => _HomeState();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _callNetwork() async {
    var url = "https://jsonplaceholder.typicode.com/todos";
    var response = await http.get(url);
    print('Response: ${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("Call Network"),
            onPressed: () => _callNetwork(),
          ),
        ),
      ),
    );
  }
}
