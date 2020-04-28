import 'package:flutter/material.dart';
import 'package:hive_preferences/preferences.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: _incrementCounter,
          child: Text('Increment Counter'),
        ),
      ),
    );
  }

  void _incrementCounter() async {
    final preferences = Preferences();
    final counter = (await preferences.getCounter() ?? 0) + 1;
    print('Pressed $counter times.');
    await preferences.setCounter(counter);
  }
}
