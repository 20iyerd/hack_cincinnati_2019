import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'post.dart';

class ListPage extends StatefulWidget {
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[

        FutureBuilder<Post>(
        future: fetchPost(),
        builder: (context, snapshot) {
        if (snapshot.hasData) {
        return Text(snapshot.data.title);
        } else if (snapshot.hasError) {
        return Text("${snapshot.error}");
        }

        // By default, show a loading spinner.
        return CircularProgressIndicator();
        },
        )
      ],
    );
  }

  Future<Post> fetchPost() async {
    final response =
    await http.get('https://www.googleapis.com/civicinfo/v2/voterinfo?key=AIzaSyCW0q6HvBThH6EkQ21-ysx2D2LdYO0Ccm8');

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return Post.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(Text('Local')),
                Tab(Text('State')),
                Tab(Text('National')),
              ],
            ),
            title: Text('Levels'),
          ),
          body: TabBarView(
            children: [
              Widget _buildList() => ListView(
            children: [
              -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),
          -tile(Abortion, Icons.),


            ]
        )
            ],
          ),
        ),
      ),
    );
  }
}