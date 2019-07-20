import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
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