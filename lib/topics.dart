import "package:flutter/material.dart";
import 'dart:io';
import 'dart:convert';

class Topics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Topics")),
        body: DefaultTabController(
            length: 1,
            child: TabBarView(
              children: [
                ListView(
                  children: <Widget>[
                    _tile("Abortion", Icons.child_friendly, context),
                    _tile("Budget&Economy", Icons.attach_money, context),
                    _tile("Civil Rights", Icons.gavel, context),
                    _tile("Crime", Icons.do_not_disturb, context),
                    _tile("Drugs", Icons.smoking_rooms, context),
                    _tile("Education", Icons.school, context),
                    _tile("Energy & Oil", Icons.power, context),
                    _tile("Environment", Icons.nature, context),
                    _tile("Families & Children", Icons.people_outline, context),
                    _tile("Foreign Policy", Icons.map, context),
                    _tile("Free Trade", Icons.payment, context),
                    _tile("Government Reform", Icons.account_balance, context),
                    _tile("Gun Control", Icons.warning, context),
                    _tile("Health Care", Icons.healing, context),
                    _tile("Homeland Security", Icons.airplanemode_active,
                        context),
                    _tile("Immigration", Icons.directions_boat, context),
                    _tile("Infrastructure & Technology", Icons.location_city,
                        context),
                    _tile("Jobs", Icons.business_center, context),
                    _tile("Principles & Values", Icons.loyalty, context)
                  ],
                )
              ],
            )));
  }

  Card _tile(String title, IconData icon, BuildContext context) => Card(
      child: FlatButton(
          onPressed: () {
            Navigator.of(context).pushNamed(title);
          },
          child: ListTile(
            title: Text(title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                )),
            leading: Icon(icon, color: Colors.blue[500]),
          )));
}

class ScopeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 1,
        child: TabBarView(children: [
          ListView(children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  Text(
                    "Local",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/thing'); //TODO: FIX!
                    },
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Text(
                    "State",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TopicFramework(),
                          ));
                    },
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Text(
                    "National",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/thing'); //TODO: FIX!
                    },
                    color: Colors.transparent,
                  ),
                ],
              ),
            )
          ])
        ]));
  }
}

class TopicFramework extends StatelessWidget {
  final String topic;
  final File file = File("/assets/topics.csv");
  TopicFramework({Key key, @required this.topic}):super(key: key);


  @override
  Widget build(BuildContext context) {
    String line = file.readAsStringSync(encoding: utf8);
    List row = line.split(',');

    String thing1 = row[0];
    String thing2 = row[1];
    String thing3 = row[2];
    return Scaffold(

      appBar: AppBar(
        title: Title(child: Text(topic)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(thing1)
          ],
        ),
      )
    );
  }
}
