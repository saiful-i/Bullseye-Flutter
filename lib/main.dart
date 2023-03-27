import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const BullsEyeApp());
}

class BullsEyeApp extends StatefulWidget {
  const BullsEyeApp({super.key});

  @override
  State<BullsEyeApp> createState() => _BullsEyeAppState();
}

class _BullsEyeAppState extends State<BullsEyeApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return const MaterialApp(
      title: 'Bullseye',
      home: GamePage(),
    );
  }
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