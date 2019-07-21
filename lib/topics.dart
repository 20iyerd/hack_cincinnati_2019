import "package:flutter/material.dart";
import 'dart:io';
import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;

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
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicFramework(topic: title,),
                ));
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
                    onPressed: (){
                      Navigator.of(context).pushNamed('/thing');
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
  String csvRaw = "";

//  final File file = File('hack_cincinnati_2019/assets/topicinformation.csv');
  TopicFramework({Key key, @required this.topic}):super(key: key);
  Future<String> loadAsset(String path) async {
    return await rootBundle.rootBundle.loadString(path);
  }
  String loadCSV() {
    loadAsset("assets/topicinformation.csv").then((dynamic output) {
      print("beginning" + output);
      csvRaw = output;
    });
    return csvRaw;
  }


  @override
  Widget build(BuildContext context) {
//    loadAsset("assets/topicinformation.csv");
//    print(csvRaw);
//    csvRaw = loadCSV();
//    print(csvRaw);
    List row = loadCSV().split(',');
    print(row);
    String thing1 = row[0];
//    String thing2 = row[1];
//    String thing3 = row[2];

    return Scaffold(

      appBar: AppBar(
        title: Title(child: Text(topic),color: Colors.blueGrey,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("About six-in-ten U.S. adults (58%) said in a 2018 survey that abortion should be legal in all or most cases, compared with 37% who said it should be illegal. There are substantial partisan and ideological divides on abortion, with Democrats much more likely than Republicans to say it should be legal in all or most cases. When it comes to the Supreme Court’s landmark 1973 ruling, about seven-in-ten Americans (69%) said Roe v. Wade should not be completely overturned,",style: Theme.of(context).textTheme.display1,) //TODO: FIX
          ],
        ),
      )
    );
  }
}
