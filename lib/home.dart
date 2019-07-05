import 'package:flutter/material.dart';

class Home extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Card(
                elevation: 3.0,
                color: Colors.white,
                child: Text('Card Child'),
              )
            ],
          ),
        ),
      )
    );
  }

}

