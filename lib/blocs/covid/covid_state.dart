import 'package:covid19_flutter/models/models.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class CovidState extends Equatable {
  const CovidState();

  @override
  List<Object> get props => [];
}

class CovidStatsEmpty extends CovidState {}

class CovidStatsLoading extends CovidState {}

class CovidStatsLoaded extends CovidState {
  final CovidStats covidStats;

  const CovidStatsLoaded({@required this.covidStats})
      : assert(covidStats != null);

  @override
  List<Object> get props => [covidStats];
}

class CovidStatsError extends CovidState {}
