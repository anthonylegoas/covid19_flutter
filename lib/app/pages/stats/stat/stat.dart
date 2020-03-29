import 'package:flutter/material.dart';

class Stat extends StatelessWidget {
  Stat({this.label, this.value});

  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          '$label:',
          style: Theme.of(context).textTheme.body1,
        ),
        Text(
          '$value',
          style: Theme.of(context).textTheme.body1,
        )
      ],
    );
  }
}
