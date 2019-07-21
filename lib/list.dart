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
        FutureBuilder(
          future: fetchPost(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                  child: SizedBox(
                width: 400,
                height: 780,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, position) {
                      return Card(
                        child: ListTile(
                          title: Text(
                            '${snapshot.data[position].name}',
                          ),
                        ),
                      );
                    }),
              ));
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

  Future<List<Post>> fetchPost() async {
    List<Post> list;
    var response = await http.get(
        Uri.encodeFull(
            'https://www.googleapis.com/civicinfo/v2/elections?key=AIzaSyCW0q6HvBThH6EkQ21-ysx2D2LdYO0Ccm8'),
        headers: {"Accept": "application/json"});
    print(response.body);
    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      var data = json
          .decode(response.body); // Post.fromJson(json.decode(response.body));
      var rest = data["elections"] as List;
      print(rest);
      list = rest.map<Post>((json) => Post.fromJson(json)).toList();
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
    return list;
  }
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Card(
        child: SizedBox(
          width: 100,
          height: 400,
          child: FlatButton(
            child: Text(
              'Topics',
              style: Theme.of(context).textTheme.display1,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/topics'); //TODO: FIX!
            },
            color: Colors.lightBlueAccent,
          ),
        ),
      ),
      Card(
        child: SizedBox(
          width: 100,
          height: 400,
          child: FlatButton(
            child: Text(
              'Candidates',
              style: Theme.of(context).textTheme.display1,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/thing'); //TODO: FIX!
            },
            color: Colors.white,
          ),
        ),
      ),
    ]);
  }
}
