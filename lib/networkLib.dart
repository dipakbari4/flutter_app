import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() => runApp(NetworkLibApp());

class NetworkLibApp extends StatelessWidget {
  void _callNetwork() async {
    var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var itemCount = jsonResponse['totalItems'];
      print('Number of books about http: $itemCount');
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Network Lib"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () => _callNetwork(),
            child: Text('Call network'),
          ),
        ),
      ),
    );
  }
}
