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
  int tileSize = 0;

  // Useless for now
  void _callNetwork() async {
    var url = "https://jsonplaceholder.typicode.com/todos";
    var response = await http.get(url);
    print('Response: ${response.body}');
  }

  // Tiles delegate to generate dynamically
  ListTile _buildTiles(BuildContext context, int position) {
    return ListTile(
      title: Text('Item $position'),
      onTap: () {
        print('tapped $position');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int position) {
              return _buildTiles(context, position);
            }),
      ),
    );
  }
}
