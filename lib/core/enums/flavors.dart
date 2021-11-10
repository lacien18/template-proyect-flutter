/// Build product flavors.
enum Flavor {
  dev,
  prod,
  test,
}

extension FlavorExtensions on Flavor {
  /// Returns the [String] value corresponding to [this] [Flavor].
  String get value {
    switch (this) {
      case Flavor.dev:
        return 'dev';
      case Flavor.prod:
        return 'prod';
      case Flavor.test:
        return 'test';
      default:
        return 'dev';
    }
  }
}
