import 'package:flutter/material.dart';
import 'package:proyect_template/features/home/presentations/views/home_page.dart';
import 'destinations.dart';

class AppNavigator {
  static final _navigatorKey = GlobalKey<NavigatorState>();
  static final _homeNavigatorKey = GlobalKey<NavigatorState>();

  /// App root Navigator key.
  static GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  /// Global App Navigator.
  static NavigatorState? get navigator => navigatorKey.currentState;

  /// Home Tab Navigator key.
  static GlobalKey<NavigatorState> get homeNavigatorKey => _homeNavigatorKey;

  /// Home Tab Navigator.
  static NavigatorState? get homeNavigator => homeNavigatorKey.currentState;

  /// Generate initial routes.
  static List<Route<dynamic>> generateInitialRoutes(String name) {
  /* widget route example HomePage or HomePage.route() is a list routes */
    switch (name) {
      case Destinations.home:
        return [
          HomePage.route(),
        ];
      default:
        return [
          HomePage.route(),
        ];
    }
  }

  /// Generate the corresponding route when app is navigated
  /// to a named route.

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Destinations.home:
        return HomePage.route();
      default:
        return HomePage.route();
    }
  }
}
