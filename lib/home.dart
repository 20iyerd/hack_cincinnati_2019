import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: FlatButton(onPressed: () {Navigator.of(context).pushNamed('/listIcons');}, child: Text("Push")),
    );
  }
}