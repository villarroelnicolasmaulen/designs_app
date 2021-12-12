// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
class Background extends StatelessWidget {
    final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.2,0.8],
        colors: [
          Color(0xff2E305F),
          Color(0xff202333)
        ] 
      )
    );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // purple Gradient
        Container(decoration: boxDecoration,),
        // pink box
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox()
          )
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5.0 ,
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: Colors.pink,
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236,98,188,1),
              Color.fromRGBO(241,142,172,1),
            ]
          )
        ),
      ),
    );
  }
}