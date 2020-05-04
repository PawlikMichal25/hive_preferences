# Hive Preferences

Example app for my article: [Using Hive instead of SharedPreferences for storing preferences](https://medium.com/@baranmichal25_54778/using-hive-instead-of-sharedpreferences-for-storing-preferences-2d98c9db930f)

This repository contains 3 branches:
- [master](https://github.com/BaranMichal25/hive_preferences): basic, suggested implementation from the article
- [Async_Preferences](https://github.com/BaranMichal25/hive_preferences/tree/Async_Preferences): alternative implementation with public constructor but asynchronous getters
- [GetIt_ChangeNotifier](https://github.com/BaranMichal25/hive_preferences/tree/GetIt_ChangeNotifier): setup from master branch with [GetIt](https://pub.dev/packages/get_it) service locator and [ChangeNotifier](https://medium.com/flutter-community/scaling-up-simple-app-state-management-6c22d0a83da5)
