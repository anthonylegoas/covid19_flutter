import 'package:covid19_flutter/app/pages/stats/stats_container.dart';
import 'package:covid19_flutter/cdk/appbar/rounded_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RoundedAppBar(
        title: 'COVID-19 Stats',
      ),
      backgroundColor: Theme.of(context).primaryColor.withOpacity(.7),
      body: Center(
        child: StatsContainer(),
      ),
    );
  }
}
