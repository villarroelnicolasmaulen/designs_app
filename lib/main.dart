import 'package:disenos/screens/basic_design.dart';
import 'package:flutter/services.dart';
import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // configura el color de la barra superior
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_screen': (_) => ScrollDesignScreen(),
        'home_screen': (_) => HomeScreen()
      },
    );
  }
}

