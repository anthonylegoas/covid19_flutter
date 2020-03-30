import 'package:equatable/equatable.dart';

class CovidStats extends Equatable {
  final String country;
  final int newConfirmed;
  final int totalConfirmed;
  final int newDeaths;
  final int totalDeaths;
  final int newRecovered;
  final int totalRecovered;

  const CovidStats(
      {this.country,
      this.newConfirmed,
      this.totalConfirmed,
      this.newDeaths,
      this.totalDeaths,
      this.newRecovered,
      this.totalRecovered});

  @override
  List<Object> get props => [
        country,
        newConfirmed,
        totalConfirmed,
        newDeaths,
        totalDeaths,
        newRecovered,
        totalRecovered
      ];

  static CovidStats fromJson(dynamic json) {
    return CovidStats(
      country: json['Country'],
      newConfirmed: json['NewConfirmed'] as int,
      totalConfirmed: json['TotalConfirmed'] as int,
      newDeaths: json['NewDeaths'] as int,
      totalDeaths: json['TotalDeaths'] as int,
      newRecovered: json['NewRecovered'] as int,
      totalRecovered: json['TotalRecovered'] as int,
    );
  }
}
