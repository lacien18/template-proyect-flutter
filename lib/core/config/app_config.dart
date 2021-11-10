import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:proyect_template/core/enums/flavors.dart';

class AppConfig {
//here your apis config

  /// API base url.
  final String? apiUrl;

  static  AppConfig? _instance;

  AppConfig({
    this.apiUrl,
  });

  factory AppConfig.fromMap(Map map) {
    return AppConfig(
      apiUrl: map['api_url'],
    );
  }

  /// Instance of [AppConfig].
  static AppConfig get instance => _instance!;

  /// Loads configuration for the given [Flavor].
  static Future<void> forEnvironment(Flavor config) async {
    final env = config.value;
    final contents = await rootBundle.loadString(
      'config/$env.json',
    );
    final dynamic json = jsonDecode(contents);
    _instance = AppConfig.fromMap(json);
  }
}
