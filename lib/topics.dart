import "package:flutter/material.dart";

class Topics extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
        child: TabBarView(
      children: [
        ListView(
          children: <Widget>[
            _tile("Abortion", Icons.child_friendly),
            _tile("Budget&Economy", Icons.attach_money),
            _tile("Civil Rights", Icons.gavel),
            _tile("Crime", Icons.do_not_disturb),
            _tile("Drugs", Icons.smoking_rooms),
            _tile("Education", Icons.school),
            _tile("Energy & Oil", Icons.power),
            _tile("Environment", Icons.nature),
            _tile("Families & Children", Icons.people_outline),
            _tile("Foreign Policy", Icons.map),
            _tile("Free Trade", Icons.payment),
            _tile("Government Reform", Icons.account_balance),
            _tile("Gun Control", Icons.warning),
            _tile("Health Care", Icons.healing),
            _tile("Homeland Security", Icons.airplanemode_active),
            _tile("Immigration", Icons.directions_boat),
            _tile("Infrastructure & Technology", Icons.location_city),
            _tile("Jobs", Icons.business_center),
            _tile("Principles & Values", Icons.loyalty)
          ],
        )

      ],
    ));
  }
  Card _tile(String title, IconData icon) => Card(
      child: ListTile(
    title: Text(title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    leading: Icon(icon,
        color: Colors.blue[500]
    ),
  ));
}