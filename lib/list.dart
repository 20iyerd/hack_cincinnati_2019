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

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'Local'),
                Tab(text: 'State'),
                Tab(text: 'National'),
              ],
            ),
            title: Text('Levels'),
          ),
          body: TabBarView(
            children: [
              ListView(
            children: <Widget>[
              _tile("Abortion", Icons.child_friendly),
          _tile("Budget&Economy", Icons.attach_money),
          _tile("Civil Rights", Icons.gavel),
          _tile("Crime", Icons.do_not_disturb),
          _tile("Drugs", Icons.smoking_rooms),
          _tile("Education", Icons.school),
          _tile("Energy & Oil", Icons.power),
          _tile("Environment", Icons.nature),
          _tile("Families & Children", Icons.people_outline),
          _tile("Foreign Policy", Icons.map),
          _tile("Free Trade", Icons.payment),
          _tile("Government Reform", Icons.account_balance),
          _tile("Gun Control", Icons.warning),
          _tile("Health Care", Icons.healing),
          _tile("Homeland Security", Icons.airplanemode_active),
          _tile("Immigration", Icons.directions_boat),
          _tile("Infrastructure & Technology", Icons.location_city),
          _tile("Jobs", Icons.business_center),
          _tile("Principles & Values", Icons.loyalty)
            ],
        )

            ],
          ),
        ),
    );
  }

  ListTile _tile(String title, IconData icon) =>ListTile(
      title: Text(title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      leading: Icon(icon,
      color: Colors.blue[500]
  ),
  );
}