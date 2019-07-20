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