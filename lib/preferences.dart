import 'package:hive/hive.dart';

class Preferences {
  static const _preferencesBox = '_preferencesBox';
  static const _counterKey = '_counterKey';

  Preferences._();

  // This doesn't have to be a singleton.
  // We just want to make sure that the box is open, before we start getting/setting objects on it
  static Future<Preferences> getInstance() async {
    await Hive.openBox<dynamic>(_preferencesBox);
    return Preferences._();
  }

  int getCounter() => _box.get(_counterKey, defaultValue: 0) as int;

  Future<void> setCounter(int counter) => _box.put(_counterKey, counter);

  Box<dynamic> get _box => Hive.box<dynamic>(_preferencesBox);
}
