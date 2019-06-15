import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 88.0,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.menu),
              tooltip: 'navigation menu',
              onPressed: null
          ),
          new Expanded(
              child: Text('$title', textAlign: TextAlign.center),
          ),
          new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'search',
              onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: 'Example title',
          ),
          new Expanded(
              child: new Center(
                child: new Text('Hello World'),
              )
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: 'my app',
    home: new MyScaffold(),
  ));
}