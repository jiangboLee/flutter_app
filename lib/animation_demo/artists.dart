import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/animation_demo/ui/artist_details_animator.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return new MaterialApp(
      title: 'hehe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new ArtistsDetailsAnimator(),
    );
  }
}
