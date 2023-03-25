import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Bullseye',
      home: GamePage(),
    )
  );
}

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello Bullseye', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                ),
            ),
            TextButton(
              onPressed: () {
                print('Hello!');
              },
              child: const Text(
                'Hit Me!', 
                style: TextStyle(
                  color: Colors.blue
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}