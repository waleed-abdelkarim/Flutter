import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('I am poor')),
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Color(0xFFFFAB00),
      body: const Center(
        child: Image(
          image: AssetImage('images/imageForSharing.jpg'),
        ),
      ),
    ),
  ));
}
