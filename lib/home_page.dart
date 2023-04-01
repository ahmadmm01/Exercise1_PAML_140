import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.name}) : super(key: key);

  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Text(
          'Welcome, $name!',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
