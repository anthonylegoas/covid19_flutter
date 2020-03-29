import 'package:covid19_flutter/app/pages/stats/stat/stat.dart';
import 'package:covid19_flutter/domain/entities/covid_stats.dart';
import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  Stats({Key key, this.covidStats}) : super(key: key);

  final CovidStats covidStats;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          covidStats.country,
          style: Theme.of(context).textTheme.display1,
        ),
        Stat(label: 'Total confirmed', value: covidStats.totalConfirmed),
        Stat(label: 'New confirmed', value: covidStats.newConfirmed),
        Stat(label: 'Total deaths', value: covidStats.totalDeaths),
        Stat(label: 'New deaths', value: covidStats.newDeaths),
      ],
    );
  }
}