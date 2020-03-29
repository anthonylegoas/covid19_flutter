import 'dart:convert';
import 'package:covid19_flutter/app/pages/stats/stats.dart';
import 'package:covid19_flutter/domain/entities/covid_stats.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class StatsContainer extends StatefulWidget {
  StatsContainer({Key key, this.country}) : super(key: key);

  final String country;

  @override
  _StatsContainerState createState() => _StatsContainerState();
}

class _StatsContainerState extends State<StatsContainer> {
  Future<CovidStats> _covidStats;

  @override
  void initState() {
    super.initState();
    _covidStats = fetchData();
  }

  Future<CovidStats> fetchData() async {
    final response = await http.get('https://api.covid19api.com/summary');

    if (response.statusCode == 200) {
      // @todo find a better API 💩
      return json
          .decode(response.body)['Countries']
          .map((d) => CovidStats.fromJson(d))
          .singleWhere((d) => d.country == widget.country);
    } else {
      throw Exception('Failed to load COVID-19 data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CovidStats>(
      future: _covidStats,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Stats(covidStats: snapshot.data);
        } else if (snapshot.hasError) {
          return Text(
            "${snapshot.error}",
            style: TextStyle(color: Colors.white),
          );
        }

        return CircularProgressIndicator();
      },
    );
  }
}
