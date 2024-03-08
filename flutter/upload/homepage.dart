import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// At the top of _MyHomePageState
class _MyHomePageState extends State<MyHomePage> {
  // Add your state variables here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Your Picture'),
      ),
      body: Column(
        children: <Widget>[
          // We will fill in these widgets in the next steps
        ],
      ),
    );
  }
}
