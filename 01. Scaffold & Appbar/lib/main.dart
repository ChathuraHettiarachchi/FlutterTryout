import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Test app'),
            centerTitle: true,
          ),
          body: Center(
            child: Text('Hello user'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Text('Click'),
          ),
    ),
));
