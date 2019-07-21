import 'package:flutter/material.dart';

import 'home.dart';
import 'list.dart';
import 'topics.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: HomePage(),
      initialRoute: '/home',
      onGenerateRoute: _getRoute,
      routes: <String, WidgetBuilder>{
        //generate routes to store in stack
        '/home': (BuildContext context) => new HomePage(),
        '/listIcons': (BuildContext context) => new TabBarDemo(),
        '/topics': (BuildContext context) => new Topics(),
        '/Abortion': (BuildContext context) => new Topics(),
        '/Budget&Economy': (BuildContext context) => new Topics(),
        '/Civil Rights': (BuildContext context) => new Topics(),
        '/Crime': (BuildContext context) => new Topics(),
        '/Drugs': (BuildContext context) => new Topics(),
        '/Education': (BuildContext context) => new Topics(),
        '/Energy & Oil': (BuildContext context) => new Topics(),
        '/Environment': (BuildContext context) => new Topics(),
        '/Families & Children': (BuildContext context) => new Topics(),
        '/Foreign Policy': (BuildContext context) => new Topics(),
        '/Government Reform': (BuildContext context) => new Topics(),
        '/Gun Control': (BuildContext context) => new Topics(),
        '/Health Care': (BuildContext context) => new Topics(),
        '/Homeland Security': (BuildContext context) => new Topics(),
        '/Immigration': (BuildContext context) => new Topics(),
        '/Infrastructure & Technology': (BuildContext context) => new Topics(),
        '/Jobs': (BuildContext context) => new Topics(),
        '/Principles & Values': (BuildContext context) => new Topics(),
      },
    );
  }
  Route<dynamic> _getRoute(RouteSettings settings) {
    //construct page route
    if (settings.name != '/login') { //TODO: why ???
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => HomePage(),
      fullscreenDialog: true,
    );
  }
}