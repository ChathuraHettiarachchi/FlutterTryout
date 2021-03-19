import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Test app'),
            centerTitle: true,
            backgroundColor: Colors.red[600],
          ),
          body: Center(
            child: Text(
              'Hello user\nThis is Choota',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
                fontFamily: 'IndieFlower'
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {  },
            child: Text('Click'),
            backgroundColor: Colors.red[600],
          ),
    ),
));
