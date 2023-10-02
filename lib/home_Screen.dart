import 'package:flutter/material.dart';

/// MediaQuery

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
              child: Container(
                width: 30,
                height: 30,
                color: Colors.red,
              ),
            ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 15,
                height: 15,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
