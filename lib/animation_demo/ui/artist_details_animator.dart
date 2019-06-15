import 'package:flutter/material.dart';
import 'package:flutter_app/animation_demo/ui/artist_details_page.dart';
import 'package:flutter_app/animation_demo/data/mock_data.dart';

class ArtistsDetailsAnimator extends StatefulWidget {
  @override
  _ArtistsDetailsAnimatorState createState() => _ArtistsDetailsAnimatorState();
}

class _ArtistsDetailsAnimatorState extends State<ArtistsDetailsAnimator> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 5000),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new ArtistDetailPage(
        artist: MockData.andy,
        controller: _controller,
    );
  }
}
