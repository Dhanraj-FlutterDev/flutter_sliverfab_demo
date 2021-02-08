import 'package:flutter/material.dart';
import 'ExampleOne.dart';
import 'ExampleTwo.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Demo(),
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Example 1'),
                onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder:(context)=> ExampleOne()))
            ),
            RaisedButton(
                child: Text('Example 2'),
                onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder:(context)=> ExampleTwo()))
            ),
          ],
        ),
      ),
    );
  }
}

