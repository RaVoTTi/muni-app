import 'package:flutter/material.dart';
 
void main() => runApp(Cuyobus());
 
class Cuyobus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text('EN DESARROLLO'),
          ),
        ),
      ),
    );
  }
}