import 'package:hive/hive.dart';

class Preferences {
  static const _preferencesBox = '_preferencesBox';
  static const _counterKey = '_counterKey';
  final Box<dynamic> _box;

  Preferences._(this._box);

  // This doesn't have to be a singleton.
  // We just want to make sure that the box is open, before we start getting/setting objects on it
  static Future<Preferences> getInstance() async {
    final box = await Hive.openBox<dynamic>(_preferencesBox);
    return Preferences._(box);
  }

  int getCounter() => _getValue(_counterKey);

  Future<void> setCounter(int counter) => _setValue(_counterKey, counter);

  T _getValue<T>(dynamic key, {T defaultValue}) => _box.get(key, defaultValue: defaultValue) as T;

  Future<void> _setValue<T>(dynamic key, T value) => _box.put(key, value);
}
