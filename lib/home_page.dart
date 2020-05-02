import 'package:flutter/material.dart';
import 'package:hive_preferences/home_notifier.dart';
import 'package:hive_preferences/service_locator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _notifier = sl.get<HomeNotifier>();

  @override
  void initState() {
    super.initState();
    _notifier.init();
    _notifier.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hive Preferences')),
      body: Center(
        child: Column(
          children: [
            Text('Current value: ${_notifier.state}'),
            RaisedButton(
              onPressed: _notifier.incrementCounter,
              child: Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
