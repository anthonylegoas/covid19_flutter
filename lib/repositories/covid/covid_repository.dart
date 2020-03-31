import 'dart:async';
import 'package:covid19_flutter/models/covid_stats.dart';
import 'package:covid19_flutter/repositories/repositories.dart';
import 'package:meta/meta.dart';

class CovidRepository {
  final CovidApiClient covidApiClient;

  CovidRepository({@required this.covidApiClient})
      : assert(CovidApiClient != null);

  Future<CovidStats> getCovidStatsByCountry(String country) async {
    return covidApiClient.fetchStatsByCountry(country);
  }
}
