import 'package:covid19_flutter/models/models.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CovidApiClient {
  static const baseUrl = 'https://api.covid19api.com';
  final http.Client httpClient;

  CovidApiClient({
    @required this.httpClient,
  }) : assert(httpClient != null);

  Future<CovidStats> fetchStatsByCountry(String country) async {
    final covidUrl = '$baseUrl/summary';
    final covidResponse = await this.httpClient.get(covidUrl);

    if (covidResponse.statusCode != 200) {
      throw Exception('Failed to load COVID-19 data.');
    }

    return jsonDecode(covidResponse.body)['Countries']
        .map((d) => CovidStats.fromJson(d))
        // @todo Find a better API with a good endpoint for country data.
        .singleWhere((d) => d.country == country);
  }
}
