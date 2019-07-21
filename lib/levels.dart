import 'package:flutter/material.dart';
import 'list.dart';

class Levels extends StatelessWidget{
  final String zip;
  Levels({@required this.zip});
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Card(
        child: SizedBox(
          width: 100,
          height: 200,
          child: FlatButton(
            child: Text(
              'Local',
              style: Theme.of(context).textTheme.display1,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListPage(zip: zip),
                  )); //TODO: FIX!
            },
            color: Colors.greenAccent,
          ),
        ),
      ),
      Card(
        child: SizedBox(
          width: 100,
          height: 200,
          child: FlatButton(
            child: Text(
              'State',
              style: Theme.of(context).textTheme.display1,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListPage(zip: zip,),
                  )); //TODO: FIX!
            },
            color: Colors.blueAccent,
          ),
        ),
      ),
      Card(
        child: SizedBox(
          width: 100,
            height: 200,
          child: FlatButton(
            child: Text(
              'National',
              style: Theme.of(context).textTheme.display1,
            ),
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListPage(zip: zip,),
                  )); //TODO: FIX!
            },
            color: Colors.deepPurpleAccent,
          )
        )
      )
    ]);
  }
}