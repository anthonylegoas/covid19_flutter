import 'package:covid19_flutter/app/pages/stats/stats_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedCountry;

  @override
  void initState() {
    super.initState();
    // @todo Implement country selection.
    _selectedCountry = 'France';
  }

  void _refreshData() {
    setState(() {
      // @todo Implement refresh.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: StatsContainer(
          country: _selectedCountry,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _refreshData,
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
