import 'package:flutter/material.dart';

class Stat extends StatelessWidget {
  Stat({this.label, this.value});

  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: new EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$value',
            style: Theme.of(context).textTheme.body1,
          ),
          Text(
            '$label',
            style: Theme.of(context).textTheme.body2,
          ),
        ],
      ),
    );
  }
}
