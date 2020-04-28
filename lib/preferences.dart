import 'package:hive/hive.dart';

class Preferences {
  static const _preferencesBox = '_preferencesBox';
  static const _counterKey = '_counterKey';

  Future<int> getCounter() => _getValue(_counterKey);

  Future<void> setCounter(int counter) => _setValue(_counterKey, counter);

  Future<T> _getValue<T>(dynamic key, {T defaultValue}) async {
    final box = await _openBox();
    return box.get(key, defaultValue: defaultValue) as T;
  }

  Future<void> _setValue<T>(dynamic key, T value) async {
    final box = await _openBox();
    await box.put(key, value);
  }

  Future<Box<dynamic>> _openBox() => Hive.openBox<dynamic>(_preferencesBox);
}
