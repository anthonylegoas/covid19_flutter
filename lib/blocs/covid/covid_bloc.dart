import 'package:covid19_flutter/blocs/blocs.dart';
import 'package:covid19_flutter/models/models.dart';
import 'package:covid19_flutter/repositories/repositories.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

class CovidBloc extends Bloc<CovidEvent, CovidState> {
  final CovidRepository covidRepository;

  CovidBloc({@required this.covidRepository}) : assert(covidRepository != null);

  @override
  CovidState get initialState => CovidStatsEmpty();

  @override
  Stream<CovidState> mapEventToState(CovidEvent event) async* {
    if (event is FetchCovidStats) {
      yield CovidStatsLoading();
      try {
        final CovidStats covidStats =
            await covidRepository.getCovidStatsByCountry(event.country);
        yield CovidStatsLoaded(covidStats: covidStats);
      } catch (_) {
        yield CovidStatsError();
      }
    }
  }
}
