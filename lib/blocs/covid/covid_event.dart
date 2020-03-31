import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class CovidEvent extends Equatable {
  const CovidEvent();
}

class FetchCovidStats extends CovidEvent {
  final String country;

  const FetchCovidStats({@required this.country}) : assert(country != null);

  @override
  List<Object> get props => [country];
}
