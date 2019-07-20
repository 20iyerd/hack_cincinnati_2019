import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome to CouchPolitics'),
        ),
        body: Center(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Enter ZIP Code Here:',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black87,
                ),
              ),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Search for your ZIP Code'
            ),
          )

            ],
          )
          ),
    );
  }
}