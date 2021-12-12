// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // imagen
          Image(image: AssetImage('assets/landscape.jpg')),
          // titulo
          Title(),
          // button section
          ButtonSection(),
          // Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text('holaholaholaholaholasdasdasdsadasdasdasd asd asd asd asdasdasdasasdda asdasdasdas asd asd as as')
            )
        ],
      )
      ,
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        children: [
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45,))
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red,),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [     
            CustomButton(icon:Icons.call, text: 'Call'),
            CustomButton(icon: Icons.navigation, text:'Route'),
            CustomButton(icon: Icons.share, text: 'Shared',),
          ],
        ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){},
      child: Column(
        children: [
          Icon(this.icon, color: Colors.blue),
          SizedBox(height: 5,),
          Text(this.text, style: TextStyle(color:Colors.blue ))
        ],
      ),
    );
  }
}