import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ScrollDesignScreen extends StatelessWidget {
    final  boxDecoration = BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.5, 0.5
            ],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30BAD6)
          ])
        );
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // backgroundColor: Color(0xff30BAD6),
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2(),

          ],
        ),
      )
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // background image
        Background(),
        // Main Content
        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white,);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Text('11', style: textStyle),
          Text('Miercoles', style: textStyle,),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 80,color: Colors.white,)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xff30BAD6),
      // alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll-1.png'),
      fit: BoxFit.fill,
      ),
    );
  }
}

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder()
          ),
        ),
      ),
      
    );
  }
}