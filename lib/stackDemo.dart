import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final showCard = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter demo'),
        ),
        body: Center(child: showCard ? _buildStack() : _buildCard()),
      ),
    );
  }

  Widget _buildCard() => SizedBox(
    height: 210,
    child: Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('lee',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('My Name'),
            leading: Icon(
              Icons.restaurant_menu,
              color: Colors.blue[500],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('1571269',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.blue[500],
            ),
          ),
          ListTile(
            title: Text('@qq.com',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.blue[500],
            ),
          ),
        ],
      ),
    ),
  );

  Widget _buildStack() => Stack(
    alignment: const Alignment(0, 0),
    children: <Widget>[
      CircleAvatar(
        backgroundImage: AssetImage('images/qq.png'),
        radius: 100,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.black45,
        ),
        child: Text(
          'lee',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      )
    ],
  );
}