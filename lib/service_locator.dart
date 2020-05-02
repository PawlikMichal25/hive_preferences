import 'package:get_it/get_it.dart';
import 'package:hive_preferences/home_notifier.dart';
import 'package:hive_preferences/preferences.dart';

GetIt sl = GetIt.instance;

void setupServiceLocator() async {
  await _setupData();
  _setupNotifiers();
}

void _setupData() async {
  sl.registerSingleton(await Preferences.getInstance());
}

void _setupNotifiers() {
  sl.registerFactory(() => HomeNotifier(sl.get<Preferences>()));
}
