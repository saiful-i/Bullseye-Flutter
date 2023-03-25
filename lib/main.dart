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
  var _alertVisible = false;

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
                _alertVisible = true;
                _showAlert(context);
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

  void _showAlert(BuildContext context) {
    var okButton = TextButton(
      onPressed: () {
        Navigator.of(context).pop();
        _alertVisible = false;
        _showAlert(context);

      }, 
      child: const Text('Awesome!')
    );
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Hello there!'),
          content: const Text('This is my first pop-up!'),
          actions: [
            okButton
          ],
          elevation: 5,
        );
    });
  }
}