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
    final response = await http.get(
        'https://www.googleapis.com/civicinfo/v2/voterinfo?key=AIzaSyCW0q6HvBThH6EkQ21-ysx2D2LdYO0Ccm8');

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return Post.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return DefaultTabController(
      length: 2,
      child: Center(
        child: Container(
          padding: new EdgeInsets.fromLTRB(50, 100, 50, 200),
          child: Column(
            children: [
              Card(
                child: FlatButton(
                  child: Text('TOPICS',
                    textDirection:
                    TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black87,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/topics'); //TODO: FIX!
                  },
                  color: Colors.transparent,
                ),
              ),
              Card(
                child: FlatButton(
                  child: Text('CANDIDATES',
                    textDirection:
                    TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black87,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/thing'); //TODO: FIX!
                  },
                  color: Colors.transparent,
                ),
              ),
            ],
=======
    return ListView(
          children: [ Card(
            child: SizedBox(width: 100, height: 400,
          child: FlatButton(
            child: Text('Topics', style: Theme.of(context).textTheme.display1,),
            onPressed: () {
              Navigator.of(context).pushNamed('/topics'); //TODO: FIX!
               },
            color: Colors.lightBlueAccent,
           ),
>>>>>>> 040b5089c3db2b0409a4a03fff7271da8bc37b0d
          ),
    ),
          Card(
            child: SizedBox(width: 100, height: 400,
          child: FlatButton(
          child: Text('Candidates', style: Theme.of(context).textTheme.display1,),
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
