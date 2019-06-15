import 'package:flutter/material.dart';

class ArtistDetailsEnterAnimation {

  final AnimationController controller;
  final Animation<double> backdropOpacity;
  final Animation<double> backdropBlur;
  final Animation<double> avatarSize;
  final Animation<double> nameOpacity;
  final Animation<double> locationOpacity;
  final Animation<double> dividerWidth;
  final Animation<double> biographyOpacity;
  final Animation<double> videoScrollerXTranslation;
  final Animation<double> videoScrollerOpacity;

  ArtistDetailsEnterAnimation(this.controller)
    : backdropOpacity = new Tween(begin: 0.5, end: 1.0).animate(
        new CurvedAnimation(
          parent: controller,
          curve: new Interval(
            0.0,
            0.5,
            curve: Curves.ease,
          ),
        ),
      ),
      backdropBlur = new Tween(begin: 0.0, end: 5.0).animate(
        new CurvedAnimation(
          parent: controller,
          curve: new Interval(
            0.0,
            0.8,
            curve: Curves.ease,
          ),
        ),
      ),
      avatarSize = new Tween(begin: 0.0, end: 1.0).animate(
        new CurvedAnimation(
          parent: controller,
          curve: new Interval(
            0.1,
            0.4,
            curve: Curves.elasticOut,
          ),
        ),
      ),
      nameOpacity = new Tween(begin: 0.0, end: 1.0).animate(
        new CurvedAnimation(
          parent: controller,
          curve: new Interval(
            0.35,
            0.45,
            curve: Curves.easeIn,
          ),
        ),
      ),
      locationOpacity = new Tween(begin: 0.0, end: 0.85).animate(
        new CurvedAnimation(
          parent: controller,
          curve: new Interval(
            0.50,
            0.60,
            curve: Curves.easeIn,
          ),
        ),
      ),
      dividerWidth = new Tween(begin: 0.0, end: 225.0).animate(
        new CurvedAnimation(
          parent: controller,
          curve: new Interval(
            0.65,
            0.75,
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
      biographyOpacity = new Tween(begin: 0.0, end: 0.85).animate(
        new CurvedAnimation(
          parent: controller,
          curve: new Interval(
            0.75,
            0.90,
            curve: Curves.easeIn,
          ),
        ),
      ),
      videoScrollerXTranslation = new Tween(begin: 60.0, end: 0.0).animate(
        new CurvedAnimation(
          parent: controller,
          curve: new Interval(
            0.83,
            1.00,
            curve: Curves.ease,
          ),
        ),
      ),
      videoScrollerOpacity = new Tween(begin: 0.0, end: 1.0).animate(
        new CurvedAnimation(
          parent: controller,
          curve: new Interval(
            0.83,
            1.00,
            curve: Curves.fastOutSlowIn,
          ),
        ),
      );
}