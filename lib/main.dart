import 'package:covid19_flutter/app/pages/home.dart';
import 'package:covid19_flutter/blocs/blocs.dart';
import 'package:covid19_flutter/blocs/simple_bloc_delegate.dart';
import 'package:covid19_flutter/repositories/repositories.dart';
import 'package:covid19_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();

  final CovidRepository covidRepository = CovidRepository(
    covidApiClient: CovidApiClient(
      httpClient: http.Client(),
    ),
  );

  runApp(MyApp(covidRepository: covidRepository));
}

class MyApp extends StatelessWidget {
  final CovidRepository covidRepository;

  MyApp({Key key, @required this.covidRepository})
      : assert(covidRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COVID-19',
      theme: AppTheme.defaultTheme,
      home: BlocProvider(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/face-protection.jpeg'),
              fit: BoxFit.fill,
            ),
          ),
          child: HomePage(),
        ),
        create: (context) => CovidBloc(covidRepository: covidRepository),
      ),
    );
  }
}
