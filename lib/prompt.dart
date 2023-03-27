import 'package:flutter/material.dart';
import 'text_style.dart';

class Promt extends StatelessWidget {
  const Promt({Key? key, required this.targetValue}) : super(key: key);
  
  final int targetValue;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Put the bullseye as close as you can', 
          style: LabelTextStyle.bodyText1(context),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('$targetValue'),
        )
      ],
    );
  }
}