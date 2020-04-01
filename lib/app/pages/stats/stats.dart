import 'package:covid19_flutter/app/pages/stats/stat/stat.dart';
import 'package:covid19_flutter/models/covid_stats.dart';
import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  Stats({Key key, this.covidStats}) : super(key: key);

  final CovidStats covidStats;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          child: Text(
            covidStats.country,
            style: Theme.of(context).textTheme.title,
          ),
          padding: EdgeInsets.all(30),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stat(
                    label: 'Total confirmed', value: covidStats.totalConfirmed),
                Stat(label: 'New confirmed', value: covidStats.newConfirmed),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stat(label: 'Total deaths', value: covidStats.totalDeaths),
                Stat(label: 'New deaths', value: covidStats.newDeaths),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
