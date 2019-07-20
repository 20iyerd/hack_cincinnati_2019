import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    final Color backgroundColor: white,
      appBar: AppBar(
        title: Text('Welcome to CouchPolitics!'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'logo.png',
            width: 100,
          ),
          Text(
            'Enter ZIP Code Here:',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 32,
              color: Colors.black87,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Search for your ZIP Code'),
          ),
          FlatButton(
            child: Text(
              'NEXT',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 32,
                color: Colors.black87,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/listIcons'); //TODO: FIX!
            },
            color: Colors.transparent,
          ),
        ],
      )),
    );
  }
}
