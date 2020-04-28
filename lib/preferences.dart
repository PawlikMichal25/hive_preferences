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

  int getCounter() => _getValue(_counterKey);

  Future<void> setCounter(int counter) => _setValue(_counterKey, counter);

  T _getValue<T>(dynamic key, {T defaultValue}) => _box.get(key, defaultValue: defaultValue) as T;

  Future<void> _setValue<T>(dynamic key, T value) => _box.put(key, value);

  Box<dynamic> get _box => Hive.box<dynamic>(_preferencesBox);
}
