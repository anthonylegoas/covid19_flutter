import 'package:covid19_flutter/app/pages/stats/stats.dart';
import 'package:covid19_flutter/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CovidBloc, CovidState>(
      builder: (context, state) {
        if (state is CovidStatsEmpty) {
          BlocProvider.of<CovidBloc>(context)
              .add(FetchCovidStats(country: 'France'));
          return Center(child: CircularProgressIndicator());
        } else if (state is CovidStatsLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is CovidStatsLoaded) {
          return Stats(covidStats: state.covidStats);
        } else if (state is CovidStatsError) {
          return Text(
            'Something went wrong!',
            style: TextStyle(color: Colors.red),
          );
        }
      },
    );
  }
}
