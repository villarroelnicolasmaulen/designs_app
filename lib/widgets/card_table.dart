// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(icon: Icons.border_all, color: Colors.blue, text: 'General',),
            _SingleCard(icon: Icons.car_rental, color: Colors.pinkAccent, text: 'Transport',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.access_alarm, color: Colors.greenAccent, text: 'Alarm',),
            _SingleCard(icon: Icons.build, color: Colors.purpleAccent, text: 'Configurations',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.document_scanner, color: Colors.amberAccent, text: 'QR',),
            _SingleCard(icon: Icons.account_balance_rounded, color: Colors.deepPurple, text: 'Municipal',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.accessibility_sharp, color: Colors.redAccent, text: 'RRHH',),
            _SingleCard(icon: Icons.library_books, color: Colors.indigoAccent, text: 'Books',),
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {


  final IconData icon;
  final Color color;
  final String text;

  _SingleCard({Key? key, required this.icon, required this.color, required this.text}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    var column = Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon(this.icon, size: 35,color: Colors.white, ),
                  radius: 30,
                ),
                SizedBox(height: 10,),
                Text(this.text, style: TextStyle(color: this.color, fontSize: 18),)
              ],
            );
    return _CardBackground(child: column,);
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

   _CardBackground({Key? key, required this.child}) : super(key: key);

    var boxDecoration = BoxDecoration(
      color: Color.fromRGBO(62,66,107,0.7),
      borderRadius: BorderRadius.circular(20)
    );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 150,
            decoration: boxDecoration,     
            child: this.child,
          ),
        ),
      ),
    );
  }
}