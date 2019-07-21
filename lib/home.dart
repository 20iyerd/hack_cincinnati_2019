import 'package:flutter/material.dart';
import 'list.dart';

//void main() => runApp(MyApp());

class HomePage extends StatelessWidget {
  final _zipController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),

      appBar: AppBar(
        title: Text('Welcome to CouchPolitics!'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/logo.png',
            width: 200,
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
            controller: _zipController,
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TabBarDemo(zip: _zipController.text,),
                  )); //TODO: FIX!
            },
            color: Colors.transparent,
          ),
        ],
      )),
    );
  }
}
